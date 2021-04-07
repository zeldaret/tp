lbl_80A9E56C:
/* 80A9E56C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9E570  7C 08 02 A6 */	mflr r0
/* 80A9E574  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9E578  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9E57C  4B 8C 3C 5D */	bl _savegpr_28
/* 80A9E580  7C 7C 1B 78 */	mr r28, r3
/* 80A9E584  3B A0 FF FF */	li r29, -1
/* 80A9E588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9E58C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9E590  3B C3 0D D8 */	addi r30, r3, 0xdd8
/* 80A9E594  7F C3 F3 78 */	mr r3, r30
/* 80A9E598  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F3FF@ha */
/* 80A9E59C  38 84 F3 FF */	addi r4, r4, 0xF3FF /* 0x0000F3FF@l */
/* 80A9E5A0  4B 59 64 65 */	bl getEventReg__11dSv_event_cCFUs
/* 80A9E5A4  54 7F 06 3F */	clrlwi. r31, r3, 0x18
/* 80A9E5A8  41 82 00 78 */	beq lbl_80A9E620
/* 80A9E5AC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80A9E5B0  41 82 00 48 */	beq lbl_80A9E5F8
/* 80A9E5B4  57 E0 CF FE */	rlwinm r0, r31, 0x19, 0x1f, 0x1f
/* 80A9E5B8  7C 60 00 D0 */	neg r3, r0
/* 80A9E5BC  38 03 00 02 */	addi r0, r3, 2
/* 80A9E5C0  7C 1D 03 78 */	mr r29, r0
/* 80A9E5C4  80 7C 0F D4 */	lwz r3, 0xfd4(r28)
/* 80A9E5C8  38 03 FF FF */	addi r0, r3, -1
/* 80A9E5CC  90 1C 0F D4 */	stw r0, 0xfd4(r28)
/* 80A9E5D0  80 1C 0F D4 */	lwz r0, 0xfd4(r28)
/* 80A9E5D4  2C 00 00 00 */	cmpwi r0, 0
/* 80A9E5D8  40 82 00 20 */	bne lbl_80A9E5F8
/* 80A9E5DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9E5E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9E5E4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80A9E5E8  54 04 46 3E */	srwi r4, r0, 0x18
/* 80A9E5EC  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80A9E5F0  7C 05 07 74 */	extsb r5, r0
/* 80A9E5F4  4B 59 6C 0D */	bl onSwitch__10dSv_info_cFii
lbl_80A9E5F8:
/* 80A9E5F8  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 80A9E5FC  41 82 00 08 */	beq lbl_80A9E604
/* 80A9E600  3B A0 00 00 */	li r29, 0
lbl_80A9E604:
/* 80A9E604  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 80A9E608  41 82 00 18 */	beq lbl_80A9E620
/* 80A9E60C  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 80A9E610  41 82 00 0C */	beq lbl_80A9E61C
/* 80A9E614  3B A0 00 01 */	li r29, 1
/* 80A9E618  48 00 00 08 */	b lbl_80A9E620
lbl_80A9E61C:
/* 80A9E61C  3B A0 00 02 */	li r29, 2
lbl_80A9E620:
/* 80A9E620  7F C3 F3 78 */	mr r3, r30
/* 80A9E624  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F3FF@ha */
/* 80A9E628  38 84 F3 FF */	addi r4, r4, 0xF3FF /* 0x0000F3FF@l */
/* 80A9E62C  38 A0 00 00 */	li r5, 0
/* 80A9E630  4B 59 63 B1 */	bl setEventReg__11dSv_event_cFUsUc
/* 80A9E634  3B E0 00 00 */	li r31, 0
/* 80A9E638  88 1C 0F DF */	lbz r0, 0xfdf(r28)
/* 80A9E63C  28 00 00 00 */	cmplwi r0, 0
/* 80A9E640  40 82 00 58 */	bne lbl_80A9E698
/* 80A9E644  7F A0 07 75 */	extsb. r0, r29
/* 80A9E648  41 82 00 14 */	beq lbl_80A9E65C
/* 80A9E64C  41 80 00 44 */	blt lbl_80A9E690
/* 80A9E650  2C 00 00 03 */	cmpwi r0, 3
/* 80A9E654  40 80 00 3C */	bge lbl_80A9E690
/* 80A9E658  48 00 00 24 */	b lbl_80A9E67C
lbl_80A9E65C:
/* 80A9E65C  88 1C 0F E0 */	lbz r0, 0xfe0(r28)
/* 80A9E660  28 00 00 00 */	cmplwi r0, 0
/* 80A9E664  40 82 00 34 */	bne lbl_80A9E698
/* 80A9E668  38 00 00 01 */	li r0, 1
/* 80A9E66C  98 1C 0F E0 */	stb r0, 0xfe0(r28)
/* 80A9E670  3B E0 00 06 */	li r31, 6
/* 80A9E674  9B BC 0F E1 */	stb r29, 0xfe1(r28)
/* 80A9E678  48 00 00 20 */	b lbl_80A9E698
lbl_80A9E67C:
/* 80A9E67C  38 00 00 01 */	li r0, 1
/* 80A9E680  98 1C 0F DF */	stb r0, 0xfdf(r28)
/* 80A9E684  3B E0 00 06 */	li r31, 6
/* 80A9E688  9B BC 0F E1 */	stb r29, 0xfe1(r28)
/* 80A9E68C  48 00 00 0C */	b lbl_80A9E698
lbl_80A9E690:
/* 80A9E690  38 00 00 00 */	li r0, 0
/* 80A9E694  98 1C 0F DF */	stb r0, 0xfdf(r28)
lbl_80A9E698:
/* 80A9E698  7F C3 F3 78 */	mr r3, r30
/* 80A9E69C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F4FF@ha */
/* 80A9E6A0  38 84 F4 FF */	addi r4, r4, 0xF4FF /* 0x0000F4FF@l */
/* 80A9E6A4  4B 59 63 61 */	bl getEventReg__11dSv_event_cCFUs
/* 80A9E6A8  98 7C 0F DE */	stb r3, 0xfde(r28)
/* 80A9E6AC  88 1C 0F DE */	lbz r0, 0xfde(r28)
/* 80A9E6B0  28 00 00 07 */	cmplwi r0, 7
/* 80A9E6B4  40 82 00 0C */	bne lbl_80A9E6C0
/* 80A9E6B8  3B E0 00 03 */	li r31, 3
/* 80A9E6BC  48 00 00 28 */	b lbl_80A9E6E4
lbl_80A9E6C0:
/* 80A9E6C0  28 00 00 00 */	cmplwi r0, 0
/* 80A9E6C4  41 82 00 20 */	beq lbl_80A9E6E4
/* 80A9E6C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9E6CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9E6D0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80A9E6D4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A9E6D8  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80A9E6DC  7C 05 07 74 */	extsb r5, r0
/* 80A9E6E0  4B 59 6B 21 */	bl onSwitch__10dSv_info_cFii
lbl_80A9E6E4:
/* 80A9E6E4  7F E3 FB 78 */	mr r3, r31
/* 80A9E6E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9E6EC  4B 8C 3B 39 */	bl _restgpr_28
/* 80A9E6F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9E6F4  7C 08 03 A6 */	mtlr r0
/* 80A9E6F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9E6FC  4E 80 00 20 */	blr 
