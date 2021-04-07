lbl_80110BEC:
/* 80110BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80110BF0  7C 08 02 A6 */	mflr r0
/* 80110BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80110BF8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80110BFC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80110C00  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80110C04  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80110C08  2C 04 00 00 */	cmpwi r4, 0
/* 80110C0C  40 82 00 08 */	bne lbl_80110C14
/* 80110C10  4B FF FC DD */	bl kandelaarModelCallBack__9daAlink_cFv
lbl_80110C14:
/* 80110C14  38 60 00 01 */	li r3, 1
/* 80110C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80110C1C  7C 08 03 A6 */	mtlr r0
/* 80110C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80110C24  4E 80 00 20 */	blr 
