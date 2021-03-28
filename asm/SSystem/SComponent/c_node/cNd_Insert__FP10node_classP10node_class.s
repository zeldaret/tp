lbl_80266244:
/* 80266244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80266248  7C 08 02 A6 */	mflr r0
/* 8026624C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80266250  39 61 00 20 */	addi r11, r1, 0x20
/* 80266254  48 0F BF 89 */	bl _savegpr_29
/* 80266258  7C 7D 1B 78 */	mr r29, r3
/* 8026625C  7C 9E 23 78 */	mr r30, r4
/* 80266260  83 E3 00 00 */	lwz r31, 0(r3)
/* 80266264  28 1F 00 00 */	cmplwi r31, 0
/* 80266268  40 82 00 14 */	bne lbl_8026627C
/* 8026626C  7F C3 F3 78 */	mr r3, r30
/* 80266270  7F A4 EB 78 */	mr r4, r29
/* 80266274  4B FF FF 9D */	bl cNd_Addition__FP10node_classP10node_class
/* 80266278  48 00 00 20 */	b lbl_80266298
lbl_8026627C:
/* 8026627C  4B FF FF 75 */	bl cNd_Cut__FP10node_class
/* 80266280  7F E3 FB 78 */	mr r3, r31
/* 80266284  7F C4 F3 78 */	mr r4, r30
/* 80266288  4B FF FF 89 */	bl cNd_Addition__FP10node_classP10node_class
/* 8026628C  7F C3 F3 78 */	mr r3, r30
/* 80266290  7F A4 EB 78 */	mr r4, r29
/* 80266294  4B FF FF 7D */	bl cNd_Addition__FP10node_classP10node_class
lbl_80266298:
/* 80266298  39 61 00 20 */	addi r11, r1, 0x20
/* 8026629C  48 0F BF 8D */	bl _restgpr_29
/* 802662A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802662A4  7C 08 03 A6 */	mtlr r0
/* 802662A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802662AC  4E 80 00 20 */	blr 
