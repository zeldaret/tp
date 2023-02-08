lbl_80A760E8:
/* 80A760E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A760EC  7C 08 02 A6 */	mflr r0
/* 80A760F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A760F4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A760F8  4B 8E C0 D9 */	bl _savegpr_26
/* 80A760FC  7C 7B 1B 78 */	mr r27, r3
/* 80A76100  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80A76104  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A76108  3B 80 00 00 */	li r28, 0
/* 80A7610C  3B 40 00 00 */	li r26, 0
/* 80A76110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A76114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A76118  3B C3 61 C0 */	addi r30, r3, 0x61c0
lbl_80A7611C:
/* 80A7611C  88 1B 16 6F */	lbz r0, 0x166f(r27)
/* 80A76120  28 00 00 00 */	cmplwi r0, 0
/* 80A76124  41 82 00 0C */	beq lbl_80A76130
/* 80A76128  28 1C 00 01 */	cmplwi r28, 1
/* 80A7612C  40 81 01 54 */	ble lbl_80A76280
lbl_80A76130:
/* 80A76130  3B BA 0E 44 */	addi r29, r26, 0xe44
/* 80A76134  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A76138  28 04 00 00 */	cmplwi r4, 0
/* 80A7613C  41 82 01 44 */	beq lbl_80A76280
/* 80A76140  2C 1C 00 02 */	cmpwi r28, 2
/* 80A76144  40 82 00 10 */	bne lbl_80A76154
/* 80A76148  88 1B 16 66 */	lbz r0, 0x1666(r27)
/* 80A7614C  28 00 00 00 */	cmplwi r0, 0
/* 80A76150  40 82 00 5C */	bne lbl_80A761AC
lbl_80A76154:
/* 80A76154  2C 1C 00 03 */	cmpwi r28, 3
/* 80A76158  40 82 00 10 */	bne lbl_80A76168
/* 80A7615C  88 1B 16 66 */	lbz r0, 0x1666(r27)
/* 80A76160  28 00 00 00 */	cmplwi r0, 0
/* 80A76164  40 82 00 48 */	bne lbl_80A761AC
lbl_80A76168:
/* 80A76168  2C 1C 00 04 */	cmpwi r28, 4
/* 80A7616C  40 82 00 10 */	bne lbl_80A7617C
/* 80A76170  88 1B 16 66 */	lbz r0, 0x1666(r27)
/* 80A76174  28 00 00 00 */	cmplwi r0, 0
/* 80A76178  40 82 00 34 */	bne lbl_80A761AC
lbl_80A7617C:
/* 80A7617C  2C 1C 00 01 */	cmpwi r28, 1
/* 80A76180  40 82 00 10 */	bne lbl_80A76190
/* 80A76184  88 1B 16 6B */	lbz r0, 0x166b(r27)
/* 80A76188  28 00 00 00 */	cmplwi r0, 0
/* 80A7618C  40 82 00 20 */	bne lbl_80A761AC
lbl_80A76190:
/* 80A76190  2C 1C 00 05 */	cmpwi r28, 5
/* 80A76194  40 82 00 10 */	bne lbl_80A761A4
/* 80A76198  88 1B 16 68 */	lbz r0, 0x1668(r27)
/* 80A7619C  28 00 00 00 */	cmplwi r0, 0
/* 80A761A0  40 82 00 0C */	bne lbl_80A761AC
lbl_80A761A4:
/* 80A761A4  2C 1C 00 00 */	cmpwi r28, 0
/* 80A761A8  40 82 00 D8 */	bne lbl_80A76280
lbl_80A761AC:
/* 80A761AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A761B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A761B4  80 84 00 04 */	lwz r4, 4(r4)
/* 80A761B8  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80A761BC  4B 72 EB E5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A761C0  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80A761C4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80A761C8  3C 60 80 A8 */	lis r3, jointNo@ha /* 0x80A7B068@ha */
/* 80A761CC  38 63 B0 68 */	addi r3, r3, jointNo@l /* 0x80A7B068@l */
/* 80A761D0  7C 03 D0 2E */	lwzx r0, r3, r26
/* 80A761D4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80A761D8  7C 64 02 14 */	add r3, r4, r0
/* 80A761DC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A761E0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A761E4  4B 8D 02 CD */	bl PSMTXCopy
/* 80A761E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A761EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A761F0  38 81 00 08 */	addi r4, r1, 8
/* 80A761F4  4B 8D 02 BD */	bl PSMTXCopy
/* 80A761F8  38 61 00 08 */	addi r3, r1, 8
/* 80A761FC  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A76200  38 84 00 24 */	addi r4, r4, 0x24
/* 80A76204  4B 8D 02 AD */	bl PSMTXCopy
/* 80A76208  2C 1C 00 00 */	cmpwi r28, 0
/* 80A7620C  40 82 00 5C */	bne lbl_80A76268
/* 80A76210  88 1B 16 6B */	lbz r0, 0x166b(r27)
/* 80A76214  28 00 00 00 */	cmplwi r0, 0
/* 80A76218  41 82 00 50 */	beq lbl_80A76268
/* 80A7621C  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80A76220  80 63 00 04 */	lwz r3, 4(r3)
/* 80A76224  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80A76228  80 63 00 00 */	lwz r3, 0(r3)
/* 80A7622C  80 63 00 08 */	lwz r3, 8(r3)
/* 80A76230  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A76234  60 00 00 01 */	ori r0, r0, 1
/* 80A76238  90 03 00 0C */	stw r0, 0xc(r3)
/* 80A7623C  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80A76240  4B 59 7A 85 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80A76244  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80A76248  80 63 00 04 */	lwz r3, 4(r3)
/* 80A7624C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80A76250  80 63 00 00 */	lwz r3, 0(r3)
/* 80A76254  80 63 00 08 */	lwz r3, 8(r3)
/* 80A76258  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A7625C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A76260  90 03 00 0C */	stw r0, 0xc(r3)
/* 80A76264  48 00 00 0C */	b lbl_80A76270
lbl_80A76268:
/* 80A76268  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80A7626C  4B 59 7A 59 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80A76270:
/* 80A76270  7F C3 F3 78 */	mr r3, r30
/* 80A76274  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80A76278  7C BB E8 2E */	lwzx r5, r27, r29
/* 80A7627C  4B 5D FC A1 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80A76280:
/* 80A76280  3B 9C 00 01 */	addi r28, r28, 1
/* 80A76284  2C 1C 00 06 */	cmpwi r28, 6
/* 80A76288  3B 5A 00 04 */	addi r26, r26, 4
/* 80A7628C  41 80 FE 90 */	blt lbl_80A7611C
/* 80A76290  39 61 00 50 */	addi r11, r1, 0x50
/* 80A76294  4B 8E BF 89 */	bl _restgpr_26
/* 80A76298  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A7629C  7C 08 03 A6 */	mtlr r0
/* 80A762A0  38 21 00 50 */	addi r1, r1, 0x50
/* 80A762A4  4E 80 00 20 */	blr 
