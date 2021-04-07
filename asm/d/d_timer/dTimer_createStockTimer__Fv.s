lbl_80261034:
/* 80261034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80261038  7C 08 02 A6 */	mflr r0
/* 8026103C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80261040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80261044  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80261048  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8026104C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80261050  7F E3 FB 78 */	mr r3, r31
/* 80261054  4B DC BB 69 */	bl getTimerMode__14dComIfG_play_cFv
/* 80261058  2C 03 FF FF */	cmpwi r3, -1
/* 8026105C  41 82 00 8C */	beq lbl_802610E8
/* 80261060  7F E3 FB 78 */	mr r3, r31
/* 80261064  4B DC BB 59 */	bl getTimerMode__14dComIfG_play_cFv
/* 80261068  2C 03 00 03 */	cmpwi r3, 3
/* 8026106C  41 82 00 14 */	beq lbl_80261080
/* 80261070  7F E3 FB 78 */	mr r3, r31
/* 80261074  4B DC BB 49 */	bl getTimerMode__14dComIfG_play_cFv
/* 80261078  2C 03 00 04 */	cmpwi r3, 4
/* 8026107C  40 82 00 34 */	bne lbl_802610B0
lbl_80261080:
/* 80261080  38 7F 3E C8 */	addi r3, r31, 0x3ec8
/* 80261084  3C 80 80 3A */	lis r4, d_d_timer__stringBase0@ha /* 0x8039A3D8@ha */
/* 80261088  38 84 A3 D8 */	addi r4, r4, d_d_timer__stringBase0@l /* 0x8039A3D8@l */
/* 8026108C  38 84 00 A4 */	addi r4, r4, 0xa4
/* 80261090  48 10 79 05 */	bl strcmp
/* 80261094  2C 03 00 00 */	cmpwi r3, 0
/* 80261098  41 82 00 18 */	beq lbl_802610B0
/* 8026109C  7F E3 FB 78 */	mr r3, r31
/* 802610A0  38 80 FF FF */	li r4, -1
/* 802610A4  4B DC BB 11 */	bl setTimerMode__14dComIfG_play_cFi
/* 802610A8  38 60 FF FF */	li r3, -1
/* 802610AC  48 00 00 40 */	b lbl_802610EC
lbl_802610B0:
/* 802610B0  7F E3 FB 78 */	mr r3, r31
/* 802610B4  4B DC BB 19 */	bl getTimerType__14dComIfG_play_cFv
/* 802610B8  7C 66 1B 78 */	mr r6, r3
/* 802610BC  38 60 03 15 */	li r3, 0x315
/* 802610C0  38 80 00 0A */	li r4, 0xa
/* 802610C4  38 A0 00 00 */	li r5, 0
/* 802610C8  38 E0 00 00 */	li r7, 0
/* 802610CC  C0 22 B5 A0 */	lfs f1, lit_5544(r2)
/* 802610D0  C0 42 B5 A4 */	lfs f2, lit_5545(r2)
/* 802610D4  C0 62 B5 A8 */	lfs f3, lit_5546(r2)
/* 802610D8  C0 82 B5 AC */	lfs f4, lit_5547(r2)
/* 802610DC  39 00 00 00 */	li r8, 0
/* 802610E0  4B DB EB E1 */	bl fop_Timer_create__FsUcUlUcUcffffPFPv_i
/* 802610E4  48 00 00 08 */	b lbl_802610EC
lbl_802610E8:
/* 802610E8  38 60 FF FF */	li r3, -1
lbl_802610EC:
/* 802610EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802610F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802610F4  7C 08 03 A6 */	mtlr r0
/* 802610F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802610FC  4E 80 00 20 */	blr 
