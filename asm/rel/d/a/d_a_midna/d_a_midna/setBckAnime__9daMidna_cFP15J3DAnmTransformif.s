lbl_804C0F24:
/* 804C0F24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C0F28  7C 08 02 A6 */	mflr r0
/* 804C0F2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C0F30  39 61 00 20 */	addi r11, r1, 0x20
/* 804C0F34  4B EA 12 A9 */	bl _savegpr_29
/* 804C0F38  7C 7E 1B 78 */	mr r30, r3
/* 804C0F3C  7C 9D 23 78 */	mr r29, r4
/* 804C0F40  3C 60 80 4C */	lis r3, lit_3777@ha /* 0x804C64C8@ha */
/* 804C0F44  3B E3 64 C8 */	addi r31, r3, lit_3777@l /* 0x804C64C8@l */
/* 804C0F48  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804C0F4C  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 804C0F50  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 804C0F54  C0 9F 03 98 */	lfs f4, 0x398(r31)
/* 804C0F58  4B B4 FF 19 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 804C0F5C  A0 1E 05 E8 */	lhz r0, 0x5e8(r30)
/* 804C0F60  28 00 FF FF */	cmplwi r0, 0xffff
/* 804C0F64  41 82 00 34 */	beq lbl_804C0F98
/* 804C0F68  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 804C0F6C  7C 04 03 78 */	mr r4, r0
/* 804C0F70  28 00 00 00 */	cmplwi r0, 0
/* 804C0F74  40 82 00 14 */	bne lbl_804C0F88
/* 804C0F78  80 1E 08 94 */	lwz r0, 0x894(r30)
/* 804C0F7C  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 804C0F80  90 1E 08 94 */	stw r0, 0x894(r30)
/* 804C0F84  48 00 00 54 */	b lbl_804C0FD8
lbl_804C0F88:
/* 804C0F88  80 1E 08 94 */	lwz r0, 0x894(r30)
/* 804C0F8C  60 00 08 00 */	ori r0, r0, 0x800
/* 804C0F90  90 1E 08 94 */	stw r0, 0x894(r30)
/* 804C0F94  48 00 00 44 */	b lbl_804C0FD8
lbl_804C0F98:
/* 804C0F98  80 9E 05 F0 */	lwz r4, 0x5f0(r30)
/* 804C0F9C  80 64 00 1C */	lwz r3, 0x1c(r4)
/* 804C0FA0  3C 03 00 01 */	addis r0, r3, 1
/* 804C0FA4  28 00 FF FF */	cmplwi r0, 0xffff
/* 804C0FA8  40 82 00 18 */	bne lbl_804C0FC0
/* 804C0FAC  80 1E 08 94 */	lwz r0, 0x894(r30)
/* 804C0FB0  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 804C0FB4  90 1E 08 94 */	stw r0, 0x894(r30)
/* 804C0FB8  38 80 00 00 */	li r4, 0
/* 804C0FBC  48 00 00 1C */	b lbl_804C0FD8
lbl_804C0FC0:
/* 804C0FC0  80 1E 08 94 */	lwz r0, 0x894(r30)
/* 804C0FC4  60 00 08 00 */	ori r0, r0, 0x800
/* 804C0FC8  90 1E 08 94 */	stw r0, 0x894(r30)
/* 804C0FCC  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 804C0FD0  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 804C0FD4  7C 83 02 14 */	add r4, r3, r0
lbl_804C0FD8:
/* 804C0FD8  28 04 00 00 */	cmplwi r4, 0
/* 804C0FDC  41 82 00 48 */	beq lbl_804C1024
/* 804C0FE0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804C0FE4  A8 03 00 16 */	lha r0, 0x16(r3)
/* 804C0FE8  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 804C0FEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C0FF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C0FF4  3C 00 43 30 */	lis r0, 0x4330
/* 804C0FF8  90 01 00 08 */	stw r0, 8(r1)
/* 804C0FFC  C8 01 00 08 */	lfd f0, 8(r1)
/* 804C1000  EC 20 08 28 */	fsubs f1, f0, f1
/* 804C1004  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C1008  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 804C100C  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 804C1010  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804C1014  4C 41 13 82 */	cror 2, 1, 2
/* 804C1018  7C 00 00 26 */	mfcr r0
/* 804C101C  54 05 1F FE */	rlwinm r5, r0, 3, 0x1f, 0x1f
/* 804C1020  4B DF F6 09 */	bl initAnime__10Z2CreatureFPvbff
lbl_804C1024:
/* 804C1024  39 61 00 20 */	addi r11, r1, 0x20
/* 804C1028  4B EA 12 01 */	bl _restgpr_29
/* 804C102C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C1030  7C 08 03 A6 */	mtlr r0
/* 804C1034  38 21 00 20 */	addi r1, r1, 0x20
/* 804C1038  4E 80 00 20 */	blr 
