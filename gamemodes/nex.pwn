// SA-MP Multi Work Editor | Language Test

#include	<a_samp>
#include	<xml>

main()
{
	new
		buffer[100],
		XML: test_file = xml_open("tr.xml")
	;
	if(test_file)
	{
		xml_get_string(test_file, "first-login/get_str", buffer);
		printf("String: %s", buffer);

		printf("Int: %d", xml_get_int(test_file, "first-login/get_int"));
		printf("Float: %f\n", xml_get_float(test_file, "first-login/get_float"));

		xml_get_string(test_file, "first-login/dialog_selection/button/@button1", buffer);
		printf("Button 1: %s", buffer);

		xml_get_string(test_file, "first-login/dialog_selection/button/@button2", buffer);
		printf("Button 2: %s", buffer);

		xml_get_string(test_file, "first-login/dialog_selection/button/@button3", buffer);
		printf("Button 3: %s\n", buffer);

		xml_close(test_file);
	}
}