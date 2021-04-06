lbl_80D2F984:
/* 80D2F984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2F988  7C 08 02 A6 */	mflr r0
/* 80D2F98C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2F990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2F994  7C 7F 1B 78 */	mr r31, r3
/* 80D2F998  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D2F99C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D2F9A0  28 04 00 FF */	cmplwi r4, 0xff
/* 80D2F9A4  41 82 00 28 */	beq lbl_80D2F9CC
/* 80D2F9A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2F9AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2F9B0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D2F9B4  7C 05 07 74 */	extsb r5, r0
/* 80D2F9B8  4B 30 59 A9 */	bl isSwitch__10dSv_info_cCFii
/* 80D2F9BC  2C 03 00 00 */	cmpwi r3, 0
/* 80D2F9C0  40 82 00 0C */	bne lbl_80D2F9CC
/* 80D2F9C4  38 60 00 01 */	li r3, 1
/* 80D2F9C8  48 00 00 90 */	b lbl_80D2FA58
lbl_80D2F9CC:
/* 80D2F9CC  7F E3 FB 78 */	mr r3, r31
/* 80D2F9D0  48 00 00 9D */	bl push_player__16daObjWaterFall_cFv
/* 80D2F9D4  7F E3 FB 78 */	mr r3, r31
/* 80D2F9D8  4B FF F3 3D */	bl search_bomb__16daObjWaterFall_cFv
/* 80D2F9DC  7F E3 FB 78 */	mr r3, r31
/* 80D2F9E0  4B FF F6 55 */	bl search_arrow__16daObjWaterFall_cFv
/* 80D2F9E4  88 1F 09 C8 */	lbz r0, 0x9c8(r31)
/* 80D2F9E8  7C 00 07 75 */	extsb. r0, r0
/* 80D2F9EC  40 81 00 28 */	ble lbl_80D2FA14
/* 80D2F9F0  38 7F 09 BC */	addi r3, r31, 0x9bc
/* 80D2F9F4  38 9F 09 B0 */	addi r4, r31, 0x9b0
/* 80D2F9F8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80D2F9FC  4B 54 0F 95 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 80D2FA00  2C 03 00 00 */	cmpwi r3, 0
/* 80D2FA04  41 82 00 30 */	beq lbl_80D2FA34
/* 80D2FA08  38 00 FF FF */	li r0, -1
/* 80D2FA0C  98 1F 09 C8 */	stb r0, 0x9c8(r31)
/* 80D2FA10  48 00 00 24 */	b lbl_80D2FA34
lbl_80D2FA14:
/* 80D2FA14  38 7F 09 BC */	addi r3, r31, 0x9bc
/* 80D2FA18  38 9F 09 A4 */	addi r4, r31, 0x9a4
/* 80D2FA1C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80D2FA20  4B 54 0F 71 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 80D2FA24  2C 03 00 00 */	cmpwi r3, 0
/* 80D2FA28  41 82 00 0C */	beq lbl_80D2FA34
/* 80D2FA2C  38 00 00 01 */	li r0, 1
/* 80D2FA30  98 1F 09 C8 */	stb r0, 0x9c8(r31)
lbl_80D2FA34:
/* 80D2FA34  38 7F 09 8C */	addi r3, r31, 0x98c
/* 80D2FA38  38 9F 09 BC */	addi r4, r31, 0x9bc
/* 80D2FA3C  4B 53 F7 A1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D2FA40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2FA44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2FA48  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D2FA4C  38 9F 08 68 */	addi r4, r31, 0x868
/* 80D2FA50  4B 53 51 59 */	bl Set__4cCcSFP8cCcD_Obj
/* 80D2FA54  38 60 00 01 */	li r3, 1
lbl_80D2FA58:
/* 80D2FA58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2FA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2FA60  7C 08 03 A6 */	mtlr r0
/* 80D2FA64  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2FA68  4E 80 00 20 */	blr 
