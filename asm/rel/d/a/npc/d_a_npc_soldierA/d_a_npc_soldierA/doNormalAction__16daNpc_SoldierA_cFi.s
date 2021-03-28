lbl_80AF10A4:
/* 80AF10A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF10A8  7C 08 02 A6 */	mflr r0
/* 80AF10AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF10B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AF10B4  7C 7F 1B 78 */	mr r31, r3
/* 80AF10B8  2C 04 00 00 */	cmpwi r4, 0
/* 80AF10BC  41 82 00 5C */	beq lbl_80AF1118
/* 80AF10C0  38 9F 0C 94 */	addi r4, r31, 0xc94
/* 80AF10C4  38 A0 00 01 */	li r5, 1
/* 80AF10C8  38 C0 00 00 */	li r6, 0
/* 80AF10CC  4B 66 24 AC */	b hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 80AF10D0  2C 03 00 00 */	cmpwi r3, 0
/* 80AF10D4  41 82 00 44 */	beq lbl_80AF1118
/* 80AF10D8  7F E3 FB 78 */	mr r3, r31
/* 80AF10DC  80 1F 09 30 */	lwz r0, 0x930(r31)
/* 80AF10E0  2C 00 00 08 */	cmpwi r0, 8
/* 80AF10E4  40 82 00 0C */	bne lbl_80AF10F0
/* 80AF10E8  38 80 00 14 */	li r4, 0x14
/* 80AF10EC  48 00 00 10 */	b lbl_80AF10FC
lbl_80AF10F0:
/* 80AF10F0  3C 80 80 AF */	lis r4, m__22daNpc_SoldierA_Param_c@ha
/* 80AF10F4  38 84 26 E8 */	addi r4, r4, m__22daNpc_SoldierA_Param_c@l
/* 80AF10F8  A8 84 00 62 */	lha r4, 0x62(r4)
lbl_80AF10FC:
/* 80AF10FC  38 A0 FF FF */	li r5, -1
/* 80AF1100  38 C0 00 00 */	li r6, 0
/* 80AF1104  4B 66 25 54 */	b setDamage__8daNpcF_cFiii
/* 80AF1108  7F E3 FB 78 */	mr r3, r31
/* 80AF110C  38 80 00 01 */	li r4, 1
/* 80AF1110  48 00 03 79 */	bl setLookMode__16daNpc_SoldierA_cFi
/* 80AF1114  48 00 00 28 */	b lbl_80AF113C
lbl_80AF1118:
/* 80AF1118  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80AF111C  28 00 00 00 */	cmplwi r0, 0
/* 80AF1120  41 82 00 1C */	beq lbl_80AF113C
/* 80AF1124  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80AF1128  2C 00 00 00 */	cmpwi r0, 0
/* 80AF112C  40 82 00 10 */	bne lbl_80AF113C
/* 80AF1130  38 00 00 00 */	li r0, 0
/* 80AF1134  B0 1F 0E 16 */	sth r0, 0xe16(r31)
/* 80AF1138  98 1F 09 F0 */	stb r0, 0x9f0(r31)
lbl_80AF113C:
/* 80AF113C  38 00 00 00 */	li r0, 0
/* 80AF1140  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80AF1144  38 7F 0D D0 */	addi r3, r31, 0xdd0
/* 80AF1148  4B 87 0E D0 */	b __ptmf_test
/* 80AF114C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF1150  41 82 00 54 */	beq lbl_80AF11A4
/* 80AF1154  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80AF1158  38 9F 0D D0 */	addi r4, r31, 0xdd0
/* 80AF115C  4B 87 0E EC */	b __ptmf_cmpr
/* 80AF1160  2C 03 00 00 */	cmpwi r3, 0
/* 80AF1164  40 82 00 1C */	bne lbl_80AF1180
/* 80AF1168  7F E3 FB 78 */	mr r3, r31
/* 80AF116C  38 80 00 00 */	li r4, 0
/* 80AF1170  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80AF1174  4B 87 0F 10 */	b __ptmf_scall
/* 80AF1178  60 00 00 00 */	nop 
/* 80AF117C  48 00 00 28 */	b lbl_80AF11A4
lbl_80AF1180:
/* 80AF1180  80 7F 0D D0 */	lwz r3, 0xdd0(r31)
/* 80AF1184  80 1F 0D D4 */	lwz r0, 0xdd4(r31)
/* 80AF1188  90 61 00 08 */	stw r3, 8(r1)
/* 80AF118C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF1190  80 1F 0D D8 */	lwz r0, 0xdd8(r31)
/* 80AF1194  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF1198  7F E3 FB 78 */	mr r3, r31
/* 80AF119C  38 81 00 08 */	addi r4, r1, 8
/* 80AF11A0  4B FF FD DD */	bl setAction__16daNpc_SoldierA_cFM16daNpc_SoldierA_cFPCvPvPv_i
lbl_80AF11A4:
/* 80AF11A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AF11A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF11AC  7C 08 03 A6 */	mtlr r0
/* 80AF11B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF11B4  4E 80 00 20 */	blr 
