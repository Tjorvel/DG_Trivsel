var Main = new function()
{
    this.sendEmail = function()
    {
        var input_name = $('#input_name').val();
        var input_suggest = $('#input_suggest').val();
        if (input_suggest != "")
        {
            if (input_name == "")
            {
                input_name = "Anonym";
            }
            $("#input_name").prop('readonly', true);
            $("#input_suggest").prop('readonly', true);
            $("#button_send").prop('disabled', true);
            $("#loading").css('visibility', 'visible');
            $.ajax(
                {
                    type: "POST",
                    url: "Default.aspx?a=sendemail",
                    data: { name: input_name, suggest: input_suggest },
                    success:
                    function (Response) {
                        if (Response == "OK")
                        {
                            $("#input_name").prop('readonly', false).val("");
                            $("#input_suggest").prop('readonly', false).val("");
                            $("#button_send").prop('disabled', false);
                            $("#loading").css('visibility', 'hidden');
                            $("#label").val("Skickat");
                        }
                        
                    }
                }
            );
            return false;
        }
        else
        {
            return false;   
        }
    }
}
