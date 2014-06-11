<?php
/**
 * Database class.
 */

class PHPS_Database {
	// Database connection
	public $database_connection;

	function  __construct($database_host, $database_username, $database_password, $database_name)
	{
		$this->database_connect($database_host, $database_username, $database_password, $database_name);
	}

	// Connect to database
	public function database_connect($database_host, $database_username, $database_password, $database_name)
	{
		$this->database_connection = new mysqli($database_host, $database_username, $database_password, $database_name);
		if ($this->database_connection->connect_error)
		{
		    if (file_exists(dirname(__FILE__) . "/../Install.php"))
		        header("location: Install.php");
			else
				echo "Database connection error";
			die();
		}
	}

	// Database query
	public function database_query($database_query)
	{
		$query_timer_start = getmicrotime();
		$query_result = $this->database_connection->query($database_query);
		return $query_result;
	}

	// Database query returning first cell
    public function get_one($query) {
        if (!($res = $this->database_connection->query($query)) and $this->get_errors)
            echo "Database error: ".$this->database_connection->error()."<br/>In query: ".$query;
        $row  = $res->fetch_row();
        $keys = @array_keys($row);
        return $row[$keys[0]];
    }

	// Database query returning first row
    public function get_row($query) {
        if (!strstr(strtoupper($query), "LIMIT"))
			$query .= " LIMIT 0,1";
        if (!($res = $this->database_connection->query($query)) and $this->get_errors)
			echo "Database error: ".$this->database_connection->error()."<br/>In query: ".$query;
        return $res->fetch_assoc();
    }

	// Database query returning all rows in an array
    public function get_all($query)
	  {
        if (!($res = $this->database_connection->query($query)) and $this->get_errors)
            echo "Database error: ".$this->database_connection->error()."<br/>In query: ".$query;
        while ($result[] = $res->fetch_assoc()) {}
        $result = array_slice($result, 0, count($result) - 1);
        return $result;
    }

    // Database query returning first column
    public function get_col($query) {
        if (!($res = $this->database_connection->query($query)) and $this->get_errors)
            echo "Database error: ".$this->database_connection->error()."<br/>In query: ".$query;
        while ($table[] = $res->fetch_assoc()) {}
        $table  = array_slice($table, 0, count($table)-1);
        $result = array();
        foreach ($table as $row)
		{
            $keys = array_keys($row);
            $key  = $keys[0];
            unset($keys);
            $result[] = $row[$key];
        }
        return $result;
    }

	// Fetch results as an array
	public function database_fetch_array($database_result)
	{
		return $database_result->fetch_array();
	}

	// Fetch row as associative array
	function database_fetch_assoc($database_result)
	{
		return $database_result->fetch_assoc();
	}

	// Returns number of rows in the result
	function database_num_rows($database_result)
	{
		return $database_result->num_rows;
	}

	// Returns number of rows in the result
	function database_affected_rows($database_result)
	{
		return $database_result->affected_rows;
	}

	// Returns the last inserted id
	function database_insert_id()
	{
		return $this->database_connection->insert_id;
	}

	// Returns database error
	function database_error()
	{
		return $this->database_connection->error();
	}

	// Close db connection
	function database_close()
	{
		$this->database_connection->close();
	}
}
?>
