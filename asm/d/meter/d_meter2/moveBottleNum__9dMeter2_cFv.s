lbl_80224258:
/* 80224258  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022425C  7C 08 02 A6 */	mflr r0
/* 80224260  90 01 00 34 */	stw r0, 0x34(r1)
/* 80224264  39 61 00 30 */	addi r11, r1, 0x30
/* 80224268  48 13 DF 5D */	bl _savegpr_23
/* 8022426C  7C 7E 1B 78 */	mr r30, r3
/* 80224270  3B E0 00 00 */	li r31, 0
/* 80224274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80224278  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8022427C  3B 43 00 9C */	addi r26, r3, 0x9c
/* 80224280  3B 23 00 EC */	addi r25, r3, 0xec
lbl_80224284:
/* 80224284  7F 43 D3 78 */	mr r3, r26
/* 80224288  38 1F 00 0B */	addi r0, r31, 0xb
/* 8022428C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80224290  38 A0 00 01 */	li r5, 1
/* 80224294  4B E0 ED 9D */	bl getItem__17dSv_player_item_cCFib
/* 80224298  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022429C  28 00 00 76 */	cmplwi r0, 0x76
/* 802242A0  40 82 00 90 */	bne lbl_80224330
/* 802242A4  7F 23 CB 78 */	mr r3, r25
/* 802242A8  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 802242AC  4B E0 FD 85 */	bl getBottleNum__24dSv_player_item_record_cCFUc
/* 802242B0  3B 1F 01 EF */	addi r24, r31, 0x1ef
/* 802242B4  7C 9E C0 AE */	lbzx r4, r30, r24
/* 802242B8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802242BC  7C 04 00 40 */	cmplw r4, r0
/* 802242C0  41 82 00 70 */	beq lbl_80224330
/* 802242C4  3A E0 00 00 */	li r23, 0
/* 802242C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802242CC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 802242D0  3B 9F 00 0B */	addi r28, r31, 0xb
lbl_802242D4:
/* 802242D4  7F 63 DB 78 */	mr r3, r27
/* 802242D8  7E E4 BB 78 */	mr r4, r23
/* 802242DC  4B E0 E7 81 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 802242E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802242E4  7C 1C 00 00 */	cmpw r28, r0
/* 802242E8  40 82 00 3C */	bne lbl_80224324
/* 802242EC  7E E3 BB 78 */	mr r3, r23
/* 802242F0  4B E0 A3 99 */	bl dComIfGp_getSelectItemMaxNum__Fi
/* 802242F4  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 802242F8  7E E3 BB 78 */	mr r3, r23
/* 802242FC  4B E0 A2 C5 */	bl dComIfGp_getSelectItemNum__Fi
/* 80224300  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80224304  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80224308  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 8022430C  7F A6 EB 78 */	mr r6, r29
/* 80224310  4B FF 68 75 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 80224314  7F 23 CB 78 */	mr r3, r25
/* 80224318  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8022431C  4B E0 FD 15 */	bl getBottleNum__24dSv_player_item_record_cCFUc
/* 80224320  7C 7E C1 AE */	stbx r3, r30, r24
lbl_80224324:
/* 80224324  3A F7 00 01 */	addi r23, r23, 1
/* 80224328  2C 17 00 02 */	cmpwi r23, 2
/* 8022432C  41 80 FF A8 */	blt lbl_802242D4
lbl_80224330:
/* 80224330  3B FF 00 01 */	addi r31, r31, 1
/* 80224334  2C 1F 00 04 */	cmpwi r31, 4
/* 80224338  41 80 FF 4C */	blt lbl_80224284
/* 8022433C  39 61 00 30 */	addi r11, r1, 0x30
/* 80224340  48 13 DE D1 */	bl _restgpr_23
/* 80224344  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80224348  7C 08 03 A6 */	mtlr r0
/* 8022434C  38 21 00 30 */	addi r1, r1, 0x30
/* 80224350  4E 80 00 20 */	blr 
