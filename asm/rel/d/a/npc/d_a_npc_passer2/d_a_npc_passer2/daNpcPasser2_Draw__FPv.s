lbl_80AA8500:
/* 80AA8500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8504  7C 08 02 A6 */	mflr r0
/* 80AA8508  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA850C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA8510  7C 7F 1B 78 */	mr r31, r3
/* 80AA8514  4B 6A EA 61 */	bl drawNpc__9daNpcCd_cFv
/* 80AA8518  80 1F 09 C4 */	lwz r0, 0x9c4(r31)
/* 80AA851C  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AA8520  40 80 00 1C */	bge lbl_80AA853C
/* 80AA8524  3C 60 80 42 */	lis r3, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA8528  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA852C  1C 00 01 64 */	mulli r0, r0, 0x164
/* 80AA8530  7C 63 02 14 */	add r3, r3, r0
/* 80AA8534  C0 23 01 40 */	lfs f1, 0x140(r3)
/* 80AA8538  48 00 00 18 */	b lbl_80AA8550
lbl_80AA853C:
/* 80AA853C  3C 60 80 42 */	lis r3, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA8540  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA8544  1C 00 01 64 */	mulli r0, r0, 0x164
/* 80AA8548  7C 63 02 14 */	add r3, r3, r0
/* 80AA854C  C0 23 01 40 */	lfs f1, 0x140(r3)
lbl_80AA8550:
/* 80AA8550  7F E3 FB 78 */	mr r3, r31
/* 80AA8554  80 9F 0A 24 */	lwz r4, 0xa24(r31)
/* 80AA8558  80 BF 09 EC */	lwz r5, 0x9ec(r31)
/* 80AA855C  4B 6A E9 31 */	bl drawObj__9daNpcCd_cFiP8J3DModelf
/* 80AA8560  38 60 00 01 */	li r3, 1
/* 80AA8564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA8568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA856C  7C 08 03 A6 */	mtlr r0
/* 80AA8570  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8574  4E 80 00 20 */	blr 
