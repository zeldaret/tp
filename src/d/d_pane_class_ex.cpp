//
// d_pane_class_ex
//

#include "d/dolzel.h"

#include "d/d_pane_class_ex.h"
#include "JSystem/J2DGraph/J2DPane.h"
#include "JSystem/J2DGraph/J2DPictureEx.h"
#include "JSystem/J2DGraph/J2DTextBoxEx.h"
#include "JSystem/J2DGraph/J2DWindowEx.h"

static void dummyVirtualFunctions(J2DPane* pane, J2DTextBoxEx* textBoxEx, J2DTextBox* textBox,
                                  J2DPictureEx* pictureEx, J2DPicture* picture,
                                  J2DWindowEx* windowEx) {
    windowEx->setAnimation((J2DAnmTransform*)NULL);
    pictureEx->setAnimation((J2DAnmTransform*)NULL);
    textBoxEx->setAnimation((J2DAnmTransform*)NULL);
    picture->getMaterial();
    pictureEx->getMaterial();
    textBox->getMaterial();
    textBoxEx->getMaterial();
    pane->setAnimation((J2DAnmTexPattern*)NULL);
    pane->setAnimation((J2DAnmVisibilityFull*)NULL);
    pane->setAnimation((J2DAnmVtxColor*)NULL);
}
