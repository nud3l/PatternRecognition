function a = my_rep(nist)
    obj=im_box(nist,0,1);
    obj=im_rotate(obj);
    %rotated=im_resize(rotated,[16 16]);
    obj=im_resize(obj,[16 16]);
    nistdata=prdataset(obj);
    obj=prdataset(obj);
    nistpro=im_profile(obj,16,16);
    nistm=im_features(obj,obj,'all');
    a = [nistdata nistpro nistm]
    %a = nistpro
end