lbl_8021C250:
/* 8021C250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021C254  7C 08 02 A6 */	mflr r0
/* 8021C258  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021C25C  39 61 00 20 */	addi r11, r1, 0x20
/* 8021C260  48 14 5F 75 */	bl _savegpr_27
/* 8021C264  7C 7C 1B 78 */	mr r28, r3
/* 8021C268  7C 9D 23 78 */	mr r29, r4
/* 8021C26C  7C BE 2B 78 */	mr r30, r5
/* 8021C270  7C DF 33 78 */	mr r31, r6
/* 8021C274  7F C3 F3 78 */	mr r3, r30
/* 8021C278  3C 80 80 3A */	lis r4, d_meter_d_meter2_info__stringBase0@ha /* 0x80399168@ha */
/* 8021C27C  38 84 91 68 */	addi r4, r4, d_meter_d_meter2_info__stringBase0@l /* 0x80399168@l */
/* 8021C280  48 14 C8 AD */	bl strcpy
/* 8021C284  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8021C288  28 03 00 00 */	cmplwi r3, 0
/* 8021C28C  40 82 00 34 */	bne lbl_8021C2C0
/* 8021C290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021C294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021C298  80 A3 5C F4 */	lwz r5, 0x5cf4(r3)
/* 8021C29C  3C 60 52 4F */	lis r3, 0x524F /* 0x524F4F54@ha */
/* 8021C2A0  38 63 4F 54 */	addi r3, r3, 0x4F54 /* 0x524F4F54@l */
/* 8021C2A4  3C 80 80 3A */	lis r4, d_meter_d_meter2_info__stringBase0@ha /* 0x80399168@ha */
/* 8021C2A8  38 84 91 68 */	addi r4, r4, d_meter_d_meter2_info__stringBase0@l /* 0x80399168@l */
/* 8021C2AC  38 84 00 01 */	addi r4, r4, 1
/* 8021C2B0  48 0B 98 89 */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 8021C2B4  28 03 00 00 */	cmplwi r3, 0
/* 8021C2B8  40 82 00 08 */	bne lbl_8021C2C0
/* 8021C2BC  48 00 00 9C */	b lbl_8021C358
lbl_8021C2C0:
/* 8021C2C0  38 83 00 20 */	addi r4, r3, 0x20
/* 8021C2C4  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8021C2C8  38 A3 00 08 */	addi r5, r3, 8
/* 8021C2CC  7C A4 2A 14 */	add r5, r4, r5
/* 8021C2D0  38 C0 00 00 */	li r6, 0
/* 8021C2D4  A0 64 00 08 */	lhz r3, 8(r4)
/* 8021C2D8  48 00 00 4C */	b lbl_8021C324
lbl_8021C2DC:
/* 8021C2DC  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8021C2E0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8021C2E4  7F 64 02 14 */	add r27, r4, r0
/* 8021C2E8  A0 1B 00 14 */	lhz r0, 0x14(r27)
/* 8021C2EC  7C 1D 00 40 */	cmplw r29, r0
/* 8021C2F0  40 82 00 30 */	bne lbl_8021C320
/* 8021C2F4  7F C3 F3 78 */	mr r3, r30
/* 8021C2F8  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8021C2FC  7C 85 02 14 */	add r4, r5, r0
/* 8021C300  48 14 C8 2D */	bl strcpy
/* 8021C304  28 1F 00 00 */	cmplwi r31, 0
/* 8021C308  41 82 00 50 */	beq lbl_8021C358
/* 8021C30C  7F E3 FB 78 */	mr r3, r31
/* 8021C310  38 9B 00 10 */	addi r4, r27, 0x10
/* 8021C314  38 A0 00 14 */	li r5, 0x14
/* 8021C318  4B DE 72 29 */	bl memcpy
/* 8021C31C  48 00 00 3C */	b lbl_8021C358
lbl_8021C320:
/* 8021C320  38 C6 00 01 */	addi r6, r6, 1
lbl_8021C324:
/* 8021C324  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8021C328  7C 00 18 40 */	cmplw r0, r3
/* 8021C32C  41 80 FF B0 */	blt lbl_8021C2DC
/* 8021C330  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8021C334  28 00 00 00 */	cmplwi r0, 0
/* 8021C338  40 82 00 20 */	bne lbl_8021C358
/* 8021C33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021C340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021C344  80 63 5C F4 */	lwz r3, 0x5cf4(r3)
/* 8021C348  81 83 00 00 */	lwz r12, 0(r3)
/* 8021C34C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8021C350  7D 89 03 A6 */	mtctr r12
/* 8021C354  4E 80 04 21 */	bctrl 
lbl_8021C358:
/* 8021C358  39 61 00 20 */	addi r11, r1, 0x20
/* 8021C35C  48 14 5E C5 */	bl _restgpr_27
/* 8021C360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021C364  7C 08 03 A6 */	mtlr r0
/* 8021C368  38 21 00 20 */	addi r1, r1, 0x20
/* 8021C36C  4E 80 00 20 */	blr 
