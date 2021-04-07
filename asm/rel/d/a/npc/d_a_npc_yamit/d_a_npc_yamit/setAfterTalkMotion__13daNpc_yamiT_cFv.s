lbl_80B4AAD0:
/* 80B4AAD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4AAD4  7C 08 02 A6 */	mflr r0
/* 80B4AAD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4AADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4AAE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4AAE4  7C 7E 1B 78 */	mr r30, r3
/* 80B4AAE8  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B4AAEC  2C 00 00 01 */	cmpwi r0, 1
/* 80B4AAF0  41 82 00 28 */	beq lbl_80B4AB18
/* 80B4AAF4  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80B4AAF8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B4AAFC  4B 5F AD 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4AB00  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80B4AB04  38 00 00 01 */	li r0, 1
/* 80B4AB08  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B4AB0C  3C 60 80 B5 */	lis r3, lit_4578@ha /* 0x80B4CE58@ha */
/* 80B4AB10  C0 03 CE 58 */	lfs f0, lit_4578@l(r3)  /* 0x80B4CE58@l */
/* 80B4AB14  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B4AB18:
/* 80B4AB18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4AB1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4AB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4AB24  7C 08 03 A6 */	mtlr r0
/* 80B4AB28  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4AB2C  4E 80 00 20 */	blr 
