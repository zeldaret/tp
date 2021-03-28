lbl_801FC70C:
/* 801FC70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC710  7C 08 02 A6 */	mflr r0
/* 801FC714  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC71C  7C 7F 1B 78 */	mr r31, r3
/* 801FC720  80 63 01 24 */	lwz r3, 0x124(r3)
/* 801FC724  28 03 00 00 */	cmplwi r3, 0
/* 801FC728  41 82 00 48 */	beq lbl_801FC770
/* 801FC72C  4B FE 73 51 */	bl isSync__14dMenu_Option_cFv
/* 801FC730  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FC734  40 82 00 0C */	bne lbl_801FC740
/* 801FC738  38 60 00 00 */	li r3, 0
/* 801FC73C  48 00 00 6C */	b lbl_801FC7A8
lbl_801FC740:
/* 801FC740  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 801FC744  4B FE 64 D9 */	bl _delete__14dMenu_Option_cFv
/* 801FC748  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 801FC74C  28 03 00 00 */	cmplwi r3, 0
/* 801FC750  41 82 00 18 */	beq lbl_801FC768
/* 801FC754  38 80 00 01 */	li r4, 1
/* 801FC758  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC75C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FC760  7D 89 03 A6 */	mtctr r12
/* 801FC764  4E 80 04 21 */	bctrl 
lbl_801FC768:
/* 801FC768  38 00 00 00 */	li r0, 0
/* 801FC76C  90 1F 01 24 */	stw r0, 0x124(r31)
lbl_801FC770:
/* 801FC770  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 801FC774  28 03 00 00 */	cmplwi r3, 0
/* 801FC778  41 82 00 24 */	beq lbl_801FC79C
/* 801FC77C  41 82 00 18 */	beq lbl_801FC794
/* 801FC780  38 80 00 01 */	li r4, 1
/* 801FC784  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC788  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FC78C  7D 89 03 A6 */	mtctr r12
/* 801FC790  4E 80 04 21 */	bctrl 
lbl_801FC794:
/* 801FC794  38 00 00 00 */	li r0, 0
/* 801FC798  90 1F 01 0C */	stw r0, 0x10c(r31)
lbl_801FC79C:
/* 801FC79C  7F E3 FB 78 */	mr r3, r31
/* 801FC7A0  48 00 09 35 */	bl checkMemSize__5dMw_cFv
/* 801FC7A4  38 60 00 01 */	li r3, 1
lbl_801FC7A8:
/* 801FC7A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC7B0  7C 08 03 A6 */	mtlr r0
/* 801FC7B4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC7B8  4E 80 00 20 */	blr 
