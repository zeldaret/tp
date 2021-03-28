lbl_8021F6EC:
/* 8021F6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021F6F0  7C 08 02 A6 */	mflr r0
/* 8021F6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021F6F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021F6FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8021F700  7C 7E 1B 78 */	mr r30, r3
/* 8021F704  80 03 01 18 */	lwz r0, 0x118(r3)
/* 8021F708  28 00 00 00 */	cmplwi r0, 0
/* 8021F70C  41 82 00 58 */	beq lbl_8021F764
/* 8021F710  38 60 00 08 */	li r3, 8
/* 8021F714  4B E0 EC BD */	bl dComIfGp_getSubHeap2D__Fi
/* 8021F718  7C 7F 1B 78 */	mr r31, r3
/* 8021F71C  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 8021F720  4B FE A5 CD */	bl hideAll__14dMeterButton_cFv
/* 8021F724  28 1F 00 00 */	cmplwi r31, 0
/* 8021F728  41 82 00 3C */	beq lbl_8021F764
/* 8021F72C  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 8021F730  28 03 00 00 */	cmplwi r3, 0
/* 8021F734  41 82 00 18 */	beq lbl_8021F74C
/* 8021F738  38 80 00 01 */	li r4, 1
/* 8021F73C  81 83 00 00 */	lwz r12, 0(r3)
/* 8021F740  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021F744  7D 89 03 A6 */	mtctr r12
/* 8021F748  4E 80 04 21 */	bctrl 
lbl_8021F74C:
/* 8021F74C  38 00 00 00 */	li r0, 0
/* 8021F750  90 1E 01 18 */	stw r0, 0x118(r30)
/* 8021F754  7F E3 FB 78 */	mr r3, r31
/* 8021F758  48 0A EE 75 */	bl freeAll__7JKRHeapFv
/* 8021F75C  38 60 00 08 */	li r3, 8
/* 8021F760  4B E0 EA 29 */	bl dComIfGp_offHeapLockFlag__Fi
lbl_8021F764:
/* 8021F764  38 60 00 01 */	li r3, 1
/* 8021F768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021F76C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8021F770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021F774  7C 08 03 A6 */	mtlr r0
/* 8021F778  38 21 00 10 */	addi r1, r1, 0x10
/* 8021F77C  4E 80 00 20 */	blr 
