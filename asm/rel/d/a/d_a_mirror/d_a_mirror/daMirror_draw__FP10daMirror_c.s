lbl_808724C0:
/* 808724C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808724C4  7C 08 02 A6 */	mflr r0
/* 808724C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808724CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808724D0  7C 7F 1B 78 */	mr r31, r3
/* 808724D4  3C 60 80 45 */	lis r3, m_myObj__10daMirror_c@ha /* 0x80450DA8@ha */
/* 808724D8  80 03 0D A8 */	lwz r0, m_myObj__10daMirror_c@l(r3)  /* 0x80450DA8@l */
/* 808724DC  7C 1F 00 40 */	cmplw r31, r0
/* 808724E0  41 82 00 0C */	beq lbl_808724EC
/* 808724E4  38 60 00 01 */	li r3, 1
/* 808724E8  48 00 00 64 */	b lbl_8087254C
lbl_808724EC:
/* 808724EC  80 1F 06 F8 */	lwz r0, 0x6f8(r31)
/* 808724F0  28 00 00 00 */	cmplwi r0, 0
/* 808724F4  41 82 00 3C */	beq lbl_80872530
/* 808724F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 808724FC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80872500  38 80 00 10 */	li r4, 0x10
/* 80872504  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80872508  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8087250C  4B 93 12 B9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80872510  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80872514  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80872518  80 9F 06 F8 */	lwz r4, 0x6f8(r31)
/* 8087251C  80 84 00 04 */	lwz r4, 4(r4)
/* 80872520  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80872524  4B 93 1E F9 */	bl setLightTevColorType__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80872528  80 7F 06 F8 */	lwz r3, 0x6f8(r31)
/* 8087252C  4B 79 B7 99 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80872530:
/* 80872530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80872534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80872538  80 63 5F 70 */	lwz r3, 0x5f70(r3)
/* 8087253C  38 9F 05 70 */	addi r4, r31, 0x570
/* 80872540  38 A0 00 00 */	li r5, 0
/* 80872544  4B AB 2F 49 */	bl entryImm__13J3DDrawBufferFP9J3DPacketUs
/* 80872548  38 60 00 01 */	li r3, 1
lbl_8087254C:
/* 8087254C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80872550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80872554  7C 08 03 A6 */	mtlr r0
/* 80872558  38 21 00 10 */	addi r1, r1, 0x10
/* 8087255C  4E 80 00 20 */	blr 
