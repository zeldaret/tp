lbl_80223E00:
/* 80223E00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80223E04  7C 08 02 A6 */	mflr r0
/* 80223E08  90 01 00 44 */	stw r0, 0x44(r1)
/* 80223E0C  39 61 00 40 */	addi r11, r1, 0x40
/* 80223E10  48 13 E3 A1 */	bl _savegpr_18
/* 80223E14  7C 75 1B 78 */	mr r21, r3
/* 80223E18  3A E0 00 00 */	li r23, 0
/* 80223E1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80223E20  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80223E24  3B 7D 00 9C */	addi r27, r29, 0x9c
/* 80223E28  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80223E2C  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
/* 80223E30  3B 5D 00 EC */	addi r26, r29, 0xec
/* 80223E34  3B 3D 00 F8 */	addi r25, r29, 0xf8
/* 80223E38  3B 1D 0F 38 */	addi r24, r29, 0xf38
lbl_80223E3C:
/* 80223E3C  7F 63 DB 78 */	mr r3, r27
/* 80223E40  38 17 00 0F */	addi r0, r23, 0xf
/* 80223E44  54 13 06 3E */	clrlwi r19, r0, 0x18
/* 80223E48  7E 64 9B 78 */	mr r4, r19
/* 80223E4C  38 A0 00 01 */	li r5, 1
/* 80223E50  4B E0 F1 E1 */	bl getItem__17dSv_player_item_cCFib
/* 80223E54  7C 7F 1B 78 */	mr r31, r3
/* 80223E58  7F 63 DB 78 */	mr r3, r27
/* 80223E5C  7E 64 9B 78 */	mr r4, r19
/* 80223E60  38 A0 00 00 */	li r5, 0
/* 80223E64  4B E0 F1 CD */	bl getItem__17dSv_player_item_cCFib
/* 80223E68  7C 7C 1B 78 */	mr r28, r3
/* 80223E6C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80223E70  28 00 00 FF */	cmplwi r0, 0xff
/* 80223E74  41 82 02 AC */	beq lbl_80224120
/* 80223E78  28 00 00 50 */	cmplwi r0, 0x50
/* 80223E7C  41 82 02 A4 */	beq lbl_80224120
/* 80223E80  3C 60 80 43 */	lis r3, g_mwHIO@ha
/* 80223E84  38 63 E8 6C */	addi r3, r3, g_mwHIO@l
/* 80223E88  4B FD 5F 8D */	bl getBombFlag__9dMw_HIO_cFv
/* 80223E8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80223E90  40 82 00 1C */	bne lbl_80223EAC
/* 80223E94  88 1E 00 DD */	lbz r0, 0xdd(r30)
/* 80223E98  28 00 00 01 */	cmplwi r0, 1
/* 80223E9C  40 82 00 7C */	bne lbl_80223F18
/* 80223EA0  88 1E 00 DC */	lbz r0, 0xdc(r30)
/* 80223EA4  7C 17 00 00 */	cmpw r23, r0
/* 80223EA8  40 82 00 70 */	bne lbl_80223F18
lbl_80223EAC:
/* 80223EAC  7F 43 D3 78 */	mr r3, r26
/* 80223EB0  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80223EB4  4B E1 00 C9 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 80223EB8  7C 73 1B 78 */	mr r19, r3
/* 80223EBC  7F 23 CB 78 */	mr r3, r25
/* 80223EC0  7F 84 E3 78 */	mr r4, r28
/* 80223EC4  4B E1 02 35 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 80223EC8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80223ECC  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 80223ED0  7C 03 00 40 */	cmplw r3, r0
/* 80223ED4  41 82 00 24 */	beq lbl_80223EF8
/* 80223ED8  7F 23 CB 78 */	mr r3, r25
/* 80223EDC  7F 84 E3 78 */	mr r4, r28
/* 80223EE0  4B E1 02 19 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 80223EE4  7C 60 1B 78 */	mr r0, r3
/* 80223EE8  7F 03 C3 78 */	mr r3, r24
/* 80223EEC  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80223EF0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80223EF4  4B E0 74 79 */	bl setItemBombNumCount__14dComIfG_play_cFUcs
lbl_80223EF8:
/* 80223EF8  7F 03 C3 78 */	mr r3, r24
/* 80223EFC  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80223F00  4B E0 74 85 */	bl getItemBombNumCount__14dComIfG_play_cFUc
/* 80223F04  7C 60 07 35 */	extsh. r0, r3
/* 80223F08  40 80 00 10 */	bge lbl_80223F18
/* 80223F0C  7F 03 C3 78 */	mr r3, r24
/* 80223F10  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80223F14  4B E0 74 81 */	bl clearItemBombNumCount__14dComIfG_play_cFUc
lbl_80223F18:
/* 80223F18  7F 03 C3 78 */	mr r3, r24
/* 80223F1C  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80223F20  4B E0 74 65 */	bl getItemBombNumCount__14dComIfG_play_cFUc
/* 80223F24  7C 60 07 35 */	extsh. r0, r3
/* 80223F28  40 82 00 40 */	bne lbl_80223F68
/* 80223F2C  7F 43 D3 78 */	mr r3, r26
/* 80223F30  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80223F34  4B E1 00 49 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 80223F38  7E 75 BA 14 */	add r19, r21, r23
/* 80223F3C  88 93 01 F3 */	lbz r4, 0x1f3(r19)
/* 80223F40  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80223F44  7C 04 00 40 */	cmplw r4, r0
/* 80223F48  40 82 00 20 */	bne lbl_80223F68
/* 80223F4C  7F 23 CB 78 */	mr r3, r25
/* 80223F50  7F 84 E3 78 */	mr r4, r28
/* 80223F54  4B E1 01 A5 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 80223F58  88 93 01 F6 */	lbz r4, 0x1f6(r19)
/* 80223F5C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80223F60  7C 04 00 40 */	cmplw r4, r0
/* 80223F64  41 82 01 F8 */	beq lbl_8022415C
lbl_80223F68:
/* 80223F68  7F 03 C3 78 */	mr r3, r24
/* 80223F6C  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80223F70  4B E0 74 15 */	bl getItemBombNumCount__14dComIfG_play_cFUc
/* 80223F74  7C 73 1B 78 */	mr r19, r3
/* 80223F78  7F 43 D3 78 */	mr r3, r26
/* 80223F7C  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80223F80  4B E0 FF FD */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 80223F84  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80223F88  7C 00 9A 14 */	add r0, r0, r19
/* 80223F8C  7C 16 07 34 */	extsh r22, r0
/* 80223F90  7F 03 C3 78 */	mr r3, r24
/* 80223F94  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80223F98  4B E0 73 FD */	bl clearItemBombNumCount__14dComIfG_play_cFUc
/* 80223F9C  7E C0 07 35 */	extsh. r0, r22
/* 80223FA0  40 80 00 08 */	bge lbl_80223FA8
/* 80223FA4  3A C0 00 00 */	li r22, 0
lbl_80223FA8:
/* 80223FA8  7F 23 CB 78 */	mr r3, r25
/* 80223FAC  7F 84 E3 78 */	mr r4, r28
/* 80223FB0  4B E1 01 49 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 80223FB4  7E C4 07 34 */	extsh r4, r22
/* 80223FB8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80223FBC  7C 04 00 00 */	cmpw r4, r0
/* 80223FC0  40 81 00 14 */	ble lbl_80223FD4
/* 80223FC4  7F 23 CB 78 */	mr r3, r25
/* 80223FC8  7F 84 E3 78 */	mr r4, r28
/* 80223FCC  4B E1 01 2D */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 80223FD0  54 76 06 3E */	clrlwi r22, r3, 0x18
lbl_80223FD4:
/* 80223FD4  7E C0 07 35 */	extsh. r0, r22
/* 80223FD8  40 82 00 C4 */	bne lbl_8022409C
/* 80223FDC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80223FE0  28 00 00 59 */	cmplwi r0, 0x59
/* 80223FE4  40 82 00 6C */	bne lbl_80224050
/* 80223FE8  3A 40 00 00 */	li r18, 0
/* 80223FEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80223FF0  3A 63 61 C0 */	addi r19, r3, g_dComIfG_gameInfo@l
/* 80223FF4  3A 97 00 0F */	addi r20, r23, 0xf
lbl_80223FF8:
/* 80223FF8  7E 63 9B 78 */	mr r3, r19
/* 80223FFC  7E 44 93 78 */	mr r4, r18
/* 80224000  4B E0 EA 5D */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80224004  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80224008  7C 14 00 00 */	cmpw r20, r0
/* 8022400C  41 82 00 18 */	beq lbl_80224024
/* 80224010  7E 43 93 78 */	mr r3, r18
/* 80224014  4B E0 9D B5 */	bl dComIfGs_getMixItemIndex__Fi
/* 80224018  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022401C  7C 14 00 00 */	cmpw r20, r0
/* 80224020  40 82 00 24 */	bne lbl_80224044
lbl_80224024:
/* 80224024  7E 43 93 78 */	mr r3, r18
/* 80224028  38 80 00 FF */	li r4, 0xff
/* 8022402C  4B E0 9C DD */	bl dComIfGs_setMixItemIndex__FiUc
/* 80224030  7E 43 93 78 */	mr r3, r18
/* 80224034  38 80 00 04 */	li r4, 4
/* 80224038  4B E0 9C 8D */	bl dComIfGs_setSelectItemIndex__FiUc
/* 8022403C  7E 43 93 78 */	mr r3, r18
/* 80224040  4B E0 9D B5 */	bl dComIfGp_setSelectItem__Fi
lbl_80224044:
/* 80224044  3A 52 00 01 */	addi r18, r18, 1
/* 80224048  2C 12 00 02 */	cmpwi r18, 2
/* 8022404C  41 80 FF AC */	blt lbl_80223FF8
lbl_80224050:
/* 80224050  7F 63 DB 78 */	mr r3, r27
/* 80224054  38 97 00 0F */	addi r4, r23, 0xf
/* 80224058  38 A0 00 50 */	li r5, 0x50
/* 8022405C  4B E0 EF 5D */	bl setItem__17dSv_player_item_cFiUc
/* 80224060  3A 97 00 0F */	addi r20, r23, 0xf
/* 80224064  9A 9D 5E 7D */	stb r20, 0x5e7d(r29)
/* 80224068  38 00 00 50 */	li r0, 0x50
/* 8022406C  98 1D 5E 7E */	stb r0, 0x5e7e(r29)
/* 80224070  3A 40 00 00 */	li r18, 0
lbl_80224074:
/* 80224074  7E 43 93 78 */	mr r3, r18
/* 80224078  4B E0 9C C5 */	bl dComIfGs_getSelectMixItemNoArrowIndex__Fi
/* 8022407C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80224080  7C 14 00 00 */	cmpw r20, r0
/* 80224084  40 82 00 0C */	bne lbl_80224090
/* 80224088  7E 43 93 78 */	mr r3, r18
/* 8022408C  4B E0 9D 69 */	bl dComIfGp_setSelectItem__Fi
lbl_80224090:
/* 80224090  3A 52 00 01 */	addi r18, r18, 1
/* 80224094  2C 12 00 02 */	cmpwi r18, 2
/* 80224098  41 80 FF DC */	blt lbl_80224074
lbl_8022409C:
/* 8022409C  7F 43 D3 78 */	mr r3, r26
/* 802240A0  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 802240A4  56 C5 06 3E */	clrlwi r5, r22, 0x18
/* 802240A8  4B E0 FE C5 */	bl setBombNum__24dSv_player_item_record_cFUcUc
/* 802240AC  7F 23 CB 78 */	mr r3, r25
/* 802240B0  7F 84 E3 78 */	mr r4, r28
/* 802240B4  4B E1 00 45 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 802240B8  38 17 01 F6 */	addi r0, r23, 0x1f6
/* 802240BC  7C 75 01 AE */	stbx r3, r21, r0
/* 802240C0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802240C4  28 00 00 59 */	cmplwi r0, 0x59
/* 802240C8  41 82 00 94 */	beq lbl_8022415C
/* 802240CC  3A 40 00 00 */	li r18, 0
/* 802240D0  3B 97 00 0F */	addi r28, r23, 0xf
lbl_802240D4:
/* 802240D4  7E 43 93 78 */	mr r3, r18
/* 802240D8  4B E0 9C 65 */	bl dComIfGs_getSelectMixItemNoArrowIndex__Fi
/* 802240DC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802240E0  7C 1C 00 00 */	cmpw r28, r0
/* 802240E4  40 82 00 2C */	bne lbl_80224110
/* 802240E8  7E 43 93 78 */	mr r3, r18
/* 802240EC  4B E0 A5 9D */	bl dComIfGp_getSelectItemMaxNum__Fi
/* 802240F0  54 76 06 3E */	clrlwi r22, r3, 0x18
/* 802240F4  7E 43 93 78 */	mr r3, r18
/* 802240F8  4B E0 A4 C9 */	bl dComIfGp_getSelectItemNum__Fi
/* 802240FC  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80224100  80 75 01 0C */	lwz r3, 0x10c(r21)
/* 80224104  56 44 06 3E */	clrlwi r4, r18, 0x18
/* 80224108  7E C6 B3 78 */	mr r6, r22
/* 8022410C  4B FF 6A 79 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
lbl_80224110:
/* 80224110  3A 52 00 01 */	addi r18, r18, 1
/* 80224114  2C 12 00 02 */	cmpwi r18, 2
/* 80224118  41 80 FF BC */	blt lbl_802240D4
/* 8022411C  48 00 00 40 */	b lbl_8022415C
lbl_80224120:
/* 80224120  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80224124  28 00 00 50 */	cmplwi r0, 0x50
/* 80224128  41 82 00 14 */	beq lbl_8022413C
/* 8022412C  7F 43 D3 78 */	mr r3, r26
/* 80224130  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80224134  38 A0 00 00 */	li r5, 0
/* 80224138  4B E0 FE 35 */	bl setBombNum__24dSv_player_item_record_cFUcUc
lbl_8022413C:
/* 8022413C  7F 03 C3 78 */	mr r3, r24
/* 80224140  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80224144  4B E0 72 41 */	bl getItemBombNumCount__14dComIfG_play_cFUc
/* 80224148  7C 60 07 35 */	extsh. r0, r3
/* 8022414C  41 82 00 10 */	beq lbl_8022415C
/* 80224150  7F 03 C3 78 */	mr r3, r24
/* 80224154  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80224158  4B E0 72 3D */	bl clearItemBombNumCount__14dComIfG_play_cFUc
lbl_8022415C:
/* 8022415C  7F 43 D3 78 */	mr r3, r26
/* 80224160  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80224164  4B E0 FE 19 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 80224168  3A 77 01 F3 */	addi r19, r23, 0x1f3
/* 8022416C  7C 95 98 AE */	lbzx r4, r21, r19
/* 80224170  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80224174  7C 04 00 40 */	cmplw r4, r0
/* 80224178  41 82 00 14 */	beq lbl_8022418C
/* 8022417C  7F 43 D3 78 */	mr r3, r26
/* 80224180  56 E4 06 3E */	clrlwi r4, r23, 0x18
/* 80224184  4B E0 FD F9 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 80224188  7C 75 99 AE */	stbx r3, r21, r19
lbl_8022418C:
/* 8022418C  3A F7 00 01 */	addi r23, r23, 1
/* 80224190  2C 17 00 03 */	cmpwi r23, 3
/* 80224194  41 80 FC A8 */	blt lbl_80223E3C
/* 80224198  3A 40 00 00 */	li r18, 0
/* 8022419C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802241A0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
lbl_802241A4:
/* 802241A4  7F 03 C3 78 */	mr r3, r24
/* 802241A8  7E 44 93 78 */	mr r4, r18
/* 802241AC  4B E0 E8 B1 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 802241B0  3A 72 01 F9 */	addi r19, r18, 0x1f9
/* 802241B4  7C 95 98 AE */	lbzx r4, r21, r19
/* 802241B8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802241BC  7C 04 00 40 */	cmplw r4, r0
/* 802241C0  41 82 00 74 */	beq lbl_80224234
/* 802241C4  3A 80 00 00 */	li r20, 0
/* 802241C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802241CC  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
lbl_802241D0:
/* 802241D0  7E E3 BB 78 */	mr r3, r23
/* 802241D4  7E 44 93 78 */	mr r4, r18
/* 802241D8  4B E0 E8 85 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 802241DC  38 94 00 0F */	addi r4, r20, 0xf
/* 802241E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802241E4  7C 04 00 00 */	cmpw r4, r0
/* 802241E8  40 82 00 2C */	bne lbl_80224214
/* 802241EC  7E 43 93 78 */	mr r3, r18
/* 802241F0  4B E0 A4 99 */	bl dComIfGp_getSelectItemMaxNum__Fi
/* 802241F4  54 76 06 3E */	clrlwi r22, r3, 0x18
/* 802241F8  7E 43 93 78 */	mr r3, r18
/* 802241FC  4B E0 A3 C5 */	bl dComIfGp_getSelectItemNum__Fi
/* 80224200  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80224204  80 75 01 0C */	lwz r3, 0x10c(r21)
/* 80224208  56 44 06 3E */	clrlwi r4, r18, 0x18
/* 8022420C  7E C6 B3 78 */	mr r6, r22
/* 80224210  4B FF 69 75 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
lbl_80224214:
/* 80224214  3A 94 00 01 */	addi r20, r20, 1
/* 80224218  2C 14 00 03 */	cmpwi r20, 3
/* 8022421C  41 80 FF B4 */	blt lbl_802241D0
/* 80224220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80224224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80224228  7E 44 93 78 */	mr r4, r18
/* 8022422C  4B E0 E8 31 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80224230  7C 75 99 AE */	stbx r3, r21, r19
lbl_80224234:
/* 80224234  3A 52 00 01 */	addi r18, r18, 1
/* 80224238  2C 12 00 02 */	cmpwi r18, 2
/* 8022423C  41 80 FF 68 */	blt lbl_802241A4
/* 80224240  39 61 00 40 */	addi r11, r1, 0x40
/* 80224244  48 13 DF B9 */	bl _restgpr_18
/* 80224248  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022424C  7C 08 03 A6 */	mtlr r0
/* 80224250  38 21 00 40 */	addi r1, r1, 0x40
/* 80224254  4E 80 00 20 */	blr 
