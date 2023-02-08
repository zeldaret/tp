lbl_8068DC58:
/* 8068DC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068DC5C  7C 08 02 A6 */	mflr r0
/* 8068DC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068DC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068DC68  7C 7F 1B 78 */	mr r31, r3
/* 8068DC6C  88 03 05 B4 */	lbz r0, 0x5b4(r3)
/* 8068DC70  28 00 00 01 */	cmplwi r0, 1
/* 8068DC74  40 82 00 0C */	bne lbl_8068DC80
/* 8068DC78  38 60 00 01 */	li r3, 1
/* 8068DC7C  48 00 00 40 */	b lbl_8068DCBC
lbl_8068DC80:
/* 8068DC80  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8068DC84  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8068DC88  38 80 00 00 */	li r4, 0
/* 8068DC8C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8068DC90  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8068DC94  4B B1 5B 31 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8068DC98  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8068DC9C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8068DCA0  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8068DCA4  80 84 00 04 */	lwz r4, 4(r4)
/* 8068DCA8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8068DCAC  4B B1 70 F5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8068DCB0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068DCB4  4B 98 00 11 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8068DCB8  38 60 00 01 */	li r3, 1
lbl_8068DCBC:
/* 8068DCBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068DCC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068DCC4  7C 08 03 A6 */	mtlr r0
/* 8068DCC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8068DCCC  4E 80 00 20 */	blr 
