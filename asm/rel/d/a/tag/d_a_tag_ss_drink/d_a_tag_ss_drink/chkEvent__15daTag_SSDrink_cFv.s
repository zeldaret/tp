lbl_80D63208:
/* 80D63208  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D6320C  7C 08 02 A6 */	mflr r0
/* 80D63210  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D63214  39 61 00 30 */	addi r11, r1, 0x30
/* 80D63218  4B 5F EF C5 */	bl _savegpr_29
/* 80D6321C  7C 7E 1B 78 */	mr r30, r3
/* 80D63220  3B E0 00 01 */	li r31, 1
/* 80D63224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D63228  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D6322C  38 00 00 00 */	li r0, 0
/* 80D63230  88 7D 4F AD */	lbz r3, 0x4fad(r29)
/* 80D63234  28 03 00 00 */	cmplwi r3, 0
/* 80D63238  41 82 00 0C */	beq lbl_80D63244
/* 80D6323C  28 03 00 02 */	cmplwi r3, 2
/* 80D63240  40 82 00 08 */	bne lbl_80D63248
lbl_80D63244:
/* 80D63244  38 00 00 01 */	li r0, 1
lbl_80D63248:
/* 80D63248  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D6324C  40 82 01 1C */	bne lbl_80D63368
/* 80D63250  3B E0 00 00 */	li r31, 0
/* 80D63254  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80D63258  28 00 00 01 */	cmplwi r0, 1
/* 80D6325C  40 82 00 C4 */	bne lbl_80D63320
/* 80D63260  3C 60 80 D6 */	lis r3, lit_3881@ha /* 0x80D637E4@ha */
/* 80D63264  38 83 37 E4 */	addi r4, r3, lit_3881@l /* 0x80D637E4@l */
/* 80D63268  80 64 00 00 */	lwz r3, 0(r4)
/* 80D6326C  80 04 00 04 */	lwz r0, 4(r4)
/* 80D63270  90 61 00 14 */	stw r3, 0x14(r1)
/* 80D63274  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D63278  80 04 00 08 */	lwz r0, 8(r4)
/* 80D6327C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D63280  7F C3 F3 78 */	mr r3, r30
/* 80D63284  38 81 00 14 */	addi r4, r1, 0x14
/* 80D63288  4B FF FE 35 */	bl checkProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i
/* 80D6328C  2C 03 00 00 */	cmpwi r3, 0
/* 80D63290  41 82 00 20 */	beq lbl_80D632B0
/* 80D63294  7F C3 F3 78 */	mr r3, r30
/* 80D63298  38 80 00 00 */	li r4, 0
/* 80D6329C  39 9E 05 C4 */	addi r12, r30, 0x5c4
/* 80D632A0  4B 5F ED E5 */	bl __ptmf_scall
/* 80D632A4  60 00 00 00 */	nop 
/* 80D632A8  7C 7F 1B 78 */	mr r31, r3
/* 80D632AC  48 00 00 6C */	b lbl_80D63318
lbl_80D632B0:
/* 80D632B0  38 00 00 00 */	li r0, 0
/* 80D632B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D632B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D632BC  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80D632C0  28 03 00 01 */	cmplwi r3, 1
/* 80D632C4  41 82 00 0C */	beq lbl_80D632D0
/* 80D632C8  28 03 00 02 */	cmplwi r3, 2
/* 80D632CC  40 82 00 08 */	bne lbl_80D632D4
lbl_80D632D0:
/* 80D632D0  38 00 00 01 */	li r0, 1
lbl_80D632D4:
/* 80D632D4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D632D8  41 82 00 14 */	beq lbl_80D632EC
/* 80D632DC  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80D632E0  4B 2E 55 11 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80D632E4  2C 03 00 00 */	cmpwi r3, 0
/* 80D632E8  41 82 00 30 */	beq lbl_80D63318
lbl_80D632EC:
/* 80D632EC  3C 60 80 D6 */	lis r3, lit_3889@ha /* 0x80D637F0@ha */
/* 80D632F0  38 83 37 F0 */	addi r4, r3, lit_3889@l /* 0x80D637F0@l */
/* 80D632F4  80 64 00 00 */	lwz r3, 0(r4)
/* 80D632F8  80 04 00 04 */	lwz r0, 4(r4)
/* 80D632FC  90 61 00 08 */	stw r3, 8(r1)
/* 80D63300  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D63304  80 04 00 08 */	lwz r0, 8(r4)
/* 80D63308  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D6330C  7F C3 F3 78 */	mr r3, r30
/* 80D63310  38 81 00 08 */	addi r4, r1, 8
/* 80D63314  4B FF FD D5 */	bl setProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i
lbl_80D63318:
/* 80D63318  7F E3 FB 78 */	mr r3, r31
/* 80D6331C  48 00 00 50 */	b lbl_80D6336C
lbl_80D63320:
/* 80D63320  28 00 00 06 */	cmplwi r0, 6
/* 80D63324  40 82 00 44 */	bne lbl_80D63368
/* 80D63328  88 1E 05 D4 */	lbz r0, 0x5d4(r30)
/* 80D6332C  28 00 00 00 */	cmplwi r0, 0
/* 80D63330  40 82 00 30 */	bne lbl_80D63360
/* 80D63334  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80D63338  28 03 00 00 */	cmplwi r3, 0
/* 80D6333C  41 82 00 10 */	beq lbl_80D6334C
/* 80D63340  88 03 09 2F */	lbz r0, 0x92f(r3)
/* 80D63344  60 00 00 01 */	ori r0, r0, 1
/* 80D63348  98 03 09 2F */	stb r0, 0x92f(r3)
lbl_80D6334C:
/* 80D6334C  A0 1E 05 74 */	lhz r0, 0x574(r30)
/* 80D63350  7C 03 07 34 */	extsh r3, r0
/* 80D63354  4B 4D 53 DD */	bl dMsgObject_addTotalPrice__Fs
/* 80D63358  38 00 00 01 */	li r0, 1
/* 80D6335C  98 1E 05 D4 */	stb r0, 0x5d4(r30)
lbl_80D63360:
/* 80D63360  38 60 00 00 */	li r3, 0
/* 80D63364  48 00 00 08 */	b lbl_80D6336C
lbl_80D63368:
/* 80D63368  7F E3 FB 78 */	mr r3, r31
lbl_80D6336C:
/* 80D6336C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D63370  4B 5F EE B9 */	bl _restgpr_29
/* 80D63374  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D63378  7C 08 03 A6 */	mtlr r0
/* 80D6337C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D63380  4E 80 00 20 */	blr 
