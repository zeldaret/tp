lbl_80124B68:
/* 80124B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124B6C  7C 08 02 A6 */	mflr r0
/* 80124B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124B78  7C 7F 1B 78 */	mr r31, r3
/* 80124B7C  80 83 32 58 */	lwz r4, 0x3258(r3)
/* 80124B80  4B FF BB F9 */	bl stopDrawParticle__9daAlink_cFUl
/* 80124B84  7F E3 FB 78 */	mr r3, r31
/* 80124B88  80 9F 32 5C */	lwz r4, 0x325c(r31)
/* 80124B8C  4B FF BB ED */	bl stopDrawParticle__9daAlink_cFUl
/* 80124B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124B98  7C 08 03 A6 */	mtlr r0
/* 80124B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80124BA0  4E 80 00 20 */	blr 
