def login_req(func):

    def inner(name,status):
        if status==False:
            print("login requried")
        else:
            func(name,status)
    
    return inner



@login_req
def profile_page(name,status):
    print("profile page")
    
profile_page("Rahul",True)