lbl_80D56064:
/* 80D56064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D56068  7C 08 02 A6 */	mflr r0
/* 80D5606C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D56074  7C 7F 1B 78 */	mr r31, r3
/* 80D56078  48 00 02 BD */	bl chkEvent__18daTag_BottleItem_cFv
/* 80D5607C  2C 03 00 00 */	cmpwi r3, 0
/* 80D56080  41 82 00 30 */	beq lbl_80D560B0
/* 80D56084  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D56088  4B 60 BF 91 */	bl __ptmf_test
/* 80D5608C  2C 03 00 00 */	cmpwi r3, 0
/* 80D56090  41 82 00 18 */	beq lbl_80D560A8
/* 80D56094  7F E3 FB 78 */	mr r3, r31
/* 80D56098  38 80 00 00 */	li r4, 0
/* 80D5609C  39 9F 05 68 */	addi r12, r31, 0x568
/* 80D560A0  4B 60 BF E5 */	bl __ptmf_scall
/* 80D560A4  60 00 00 00 */	nop 
lbl_80D560A8:
/* 80D560A8  7F E3 FB 78 */	mr r3, r31
/* 80D560AC  48 00 02 D9 */	bl orderEvent__18daTag_BottleItem_cFv
lbl_80D560B0:
/* 80D560B0  7F E3 FB 78 */	mr r3, r31
/* 80D560B4  48 00 02 4D */	bl setAttnPos__18daTag_BottleItem_cFv
/* 80D560B8  38 60 00 01 */	li r3, 1
/* 80D560BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D560C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D560C4  7C 08 03 A6 */	mtlr r0
/* 80D560C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D560CC  4E 80 00 20 */	blr 
