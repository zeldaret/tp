lbl_8021A2F4:
/* 8021A2F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8021A2F8  7C 08 02 A6 */	mflr r0
/* 8021A2FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8021A300  39 61 00 40 */	addi r11, r1, 0x40
/* 8021A304  48 14 7E D5 */	bl _savegpr_28
/* 8021A308  7C 9D 23 78 */	mr r29, r4
/* 8021A30C  7C BC 2B 78 */	mr r28, r5
/* 8021A310  7C DF 33 78 */	mr r31, r6
/* 8021A314  3C 60 80 43 */	lis r3, i_text_buf@ha
/* 8021A318  38 63 01 58 */	addi r3, r3, i_text_buf@l
/* 8021A31C  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha
/* 8021A320  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l
/* 8021A324  38 84 00 EF */	addi r4, r4, 0xef
/* 8021A328  48 14 E8 05 */	bl strcpy
/* 8021A32C  28 1F 00 00 */	cmplwi r31, 0
/* 8021A330  41 82 00 0C */	beq lbl_8021A33C
/* 8021A334  38 00 00 01 */	li r0, 1
/* 8021A338  98 1F 00 00 */	stb r0, 0(r31)
lbl_8021A33C:
/* 8021A33C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8021A340  28 00 00 81 */	cmplwi r0, 0x81
/* 8021A344  40 82 00 80 */	bne lbl_8021A3C4
/* 8021A348  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021A34C  3B A3 EB C8 */	addi r29, r3, g_drawHIO@l
/* 8021A350  80 9D 02 C8 */	lwz r4, 0x2c8(r29)
/* 8021A354  2C 04 00 00 */	cmpwi r4, 0
/* 8021A358  41 82 00 F0 */	beq lbl_8021A448
/* 8021A35C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8021A360  28 00 00 01 */	cmplwi r0, 1
/* 8021A364  40 82 00 20 */	bne lbl_8021A384
/* 8021A368  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021A36C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021A370  3C A0 80 43 */	lis r5, i_text_buf@ha
/* 8021A374  38 A5 01 58 */	addi r5, r5, i_text_buf@l
/* 8021A378  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8021A37C  48 00 1F F5 */	bl getStringKana__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 8021A380  48 00 00 1C */	b lbl_8021A39C
lbl_8021A384:
/* 8021A384  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021A388  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021A38C  3C A0 80 43 */	lis r5, i_text_buf@ha
/* 8021A390  38 A5 01 58 */	addi r5, r5, i_text_buf@l
/* 8021A394  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8021A398  48 00 21 AD */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
lbl_8021A39C:
/* 8021A39C  28 1F 00 00 */	cmplwi r31, 0
/* 8021A3A0  41 82 00 A8 */	beq lbl_8021A448
/* 8021A3A4  88 01 00 26 */	lbz r0, 0x26(r1)
/* 8021A3A8  98 1F 00 00 */	stb r0, 0(r31)
/* 8021A3AC  80 1D 02 C8 */	lwz r0, 0x2c8(r29)
/* 8021A3B0  2C 00 03 E6 */	cmpwi r0, 0x3e6
/* 8021A3B4  40 82 00 94 */	bne lbl_8021A448
/* 8021A3B8  38 00 00 07 */	li r0, 7
/* 8021A3BC  98 1F 00 00 */	stb r0, 0(r31)
/* 8021A3C0  48 00 00 88 */	b lbl_8021A448
lbl_8021A3C4:
/* 8021A3C4  28 00 00 82 */	cmplwi r0, 0x82
/* 8021A3C8  40 80 00 80 */	bge lbl_8021A448
/* 8021A3CC  57 BD 15 BA */	rlwinm r29, r29, 2, 0x16, 0x1d
/* 8021A3D0  3C 60 80 3C */	lis r3, i_action_num@ha
/* 8021A3D4  3B C3 F3 50 */	addi r30, r3, i_action_num@l
/* 8021A3D8  7C 9E E8 2E */	lwzx r4, r30, r29
/* 8021A3DC  28 04 00 00 */	cmplwi r4, 0
/* 8021A3E0  41 82 00 68 */	beq lbl_8021A448
/* 8021A3E4  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8021A3E8  28 00 00 01 */	cmplwi r0, 1
/* 8021A3EC  40 82 00 20 */	bne lbl_8021A40C
/* 8021A3F0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021A3F4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021A3F8  3C A0 80 43 */	lis r5, i_text_buf@ha
/* 8021A3FC  38 A5 01 58 */	addi r5, r5, i_text_buf@l
/* 8021A400  38 C1 00 08 */	addi r6, r1, 8
/* 8021A404  48 00 1F 6D */	bl getStringKana__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 8021A408  48 00 00 1C */	b lbl_8021A424
lbl_8021A40C:
/* 8021A40C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021A410  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021A414  3C A0 80 43 */	lis r5, i_text_buf@ha
/* 8021A418  38 A5 01 58 */	addi r5, r5, i_text_buf@l
/* 8021A41C  38 C1 00 08 */	addi r6, r1, 8
/* 8021A420  48 00 21 25 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
lbl_8021A424:
/* 8021A424  28 1F 00 00 */	cmplwi r31, 0
/* 8021A428  41 82 00 20 */	beq lbl_8021A448
/* 8021A42C  88 01 00 12 */	lbz r0, 0x12(r1)
/* 8021A430  98 1F 00 00 */	stb r0, 0(r31)
/* 8021A434  7C 1E E8 2E */	lwzx r0, r30, r29
/* 8021A438  28 00 03 E6 */	cmplwi r0, 0x3e6
/* 8021A43C  40 82 00 0C */	bne lbl_8021A448
/* 8021A440  38 00 00 07 */	li r0, 7
/* 8021A444  98 1F 00 00 */	stb r0, 0(r31)
lbl_8021A448:
/* 8021A448  3C 60 80 43 */	lis r3, i_text_buf@ha
/* 8021A44C  38 63 01 58 */	addi r3, r3, i_text_buf@l
/* 8021A450  39 61 00 40 */	addi r11, r1, 0x40
/* 8021A454  48 14 7D D1 */	bl _restgpr_28
/* 8021A458  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8021A45C  7C 08 03 A6 */	mtlr r0
/* 8021A460  38 21 00 40 */	addi r1, r1, 0x40
/* 8021A464  4E 80 00 20 */	blr 
