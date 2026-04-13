#!/bin/bash
wget https://files.pythonhosted.org/packages/c6/53/9616fb0d1ea5fcf4075542e9c24db04ee27ce4940a85dcb428e8ebd3b527/Lagranto-0.3.1.tar.gz
tar -xf Lagranto-0.3.1.tar.gz
rm Lagranto-0.3.1.tar.gz
sed -i 's#prefix=""#prefix="apptainer exec -C -B .:${HOME} ${LagrantoSif}"#' Lagranto-0.3.1/src/lagranto/tools.py
sed -i 's#script = (#_ = (#' Lagranto-0.3.1/src/lagranto/tools.py
sed -i 's#abspath()#absolute()#g' Lagranto-0.3.1/src/lagranto/lagranto.py
sed -i 's#no_tmp_dir=False#no_tmp_dir=True#' Lagranto-0.3.1/src/lagranto/lagranto.py
sed -i 's#self.startf = self.startf.format(date=startdate)#    self.startf = filename.format(date=startdate)#' Lagranto-0.3.1/src/lagranto/lagranto.py
sed -i '/prefix=prefix/d' Lagranto-0.3.1/src/lagranto/lagranto.py
