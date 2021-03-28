lbl_80464F64:
/* 80464F64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80464F68  7C 08 02 A6 */	mflr r0
/* 80464F6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80464F70  39 61 00 30 */	addi r11, r1, 0x30
/* 80464F74  4B EF D2 54 */	b _savegpr_24
/* 80464F78  7C 7D 1B 78 */	mr r29, r3
/* 80464F7C  3C 60 80 46 */	lis r3, cNullVec__6Z2Calc@ha
/* 80464F80  3B E3 6E 7C */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80464F84  3B 00 00 00 */	li r24, 0
/* 80464F88  3B 60 00 00 */	li r27, 0
/* 80464F8C  3B 80 00 00 */	li r28, 0
/* 80464F90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80464F94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80464F98  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80464F9C  3B 3F 02 A8 */	addi r25, r31, 0x2a8
/* 80464FA0  3B 40 00 FF */	li r26, 0xff
lbl_80464FA4:
/* 80464FA4  7F C3 F3 78 */	mr r3, r30
/* 80464FA8  7F A4 EB 78 */	mr r4, r29
/* 80464FAC  7C B9 E0 2E */	lwzx r5, r25, r28
/* 80464FB0  38 C0 00 FF */	li r6, 0xff
/* 80464FB4  4B BE 27 A4 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80464FB8  38 1B 06 92 */	addi r0, r27, 0x692
/* 80464FBC  7C 7D 03 2E */	sthx r3, r29, r0
/* 80464FC0  38 18 06 B8 */	addi r0, r24, 0x6b8
/* 80464FC4  7F 5D 01 AE */	stbx r26, r29, r0
/* 80464FC8  3B 18 00 01 */	addi r24, r24, 1
/* 80464FCC  2C 18 00 13 */	cmpwi r24, 0x13
/* 80464FD0  3B 7B 00 02 */	addi r27, r27, 2
/* 80464FD4  3B 9C 00 04 */	addi r28, r28, 4
/* 80464FD8  41 80 FF CC */	blt lbl_80464FA4
/* 80464FDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80464FE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80464FE4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80464FE8  88 1D 06 91 */	lbz r0, 0x691(r29)
/* 80464FEC  2C 00 00 04 */	cmpwi r0, 4
/* 80464FF0  41 82 02 1C */	beq lbl_8046520C
/* 80464FF4  40 80 00 1C */	bge lbl_80465010
/* 80464FF8  2C 00 00 02 */	cmpwi r0, 2
/* 80464FFC  41 82 01 6C */	beq lbl_80465168
/* 80465000  40 80 00 C4 */	bge lbl_804650C4
/* 80465004  2C 00 00 01 */	cmpwi r0, 1
/* 80465008  40 80 00 18 */	bge lbl_80465020
/* 8046500C  48 00 03 8C */	b lbl_80465398
lbl_80465010:
/* 80465010  2C 00 00 06 */	cmpwi r0, 6
/* 80465014  41 82 02 E4 */	beq lbl_804652F8
/* 80465018  40 80 03 80 */	bge lbl_80465398
/* 8046501C  48 00 02 38 */	b lbl_80465254
lbl_80465020:
/* 80465020  28 03 00 00 */	cmplwi r3, 0
/* 80465024  41 82 00 58 */	beq lbl_8046507C
/* 80465028  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8046502C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80465030  41 82 00 4C */	beq lbl_8046507C
/* 80465034  3B 80 00 00 */	li r28, 0
/* 80465038  3B 00 00 04 */	li r24, 4
/* 8046503C  3B 60 00 08 */	li r27, 8
/* 80465040  3B FF 03 04 */	addi r31, r31, 0x304
lbl_80465044:
/* 80465044  7F C3 F3 78 */	mr r3, r30
/* 80465048  7F A4 EB 78 */	mr r4, r29
/* 8046504C  7C BF E0 2E */	lwzx r5, r31, r28
/* 80465050  38 18 06 B8 */	addi r0, r24, 0x6b8
/* 80465054  7C DD 00 AE */	lbzx r6, r29, r0
/* 80465058  4B BE 27 00 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8046505C  38 1B 06 92 */	addi r0, r27, 0x692
/* 80465060  7C 7D 03 2E */	sthx r3, r29, r0
/* 80465064  3B 18 00 01 */	addi r24, r24, 1
/* 80465068  2C 18 00 08 */	cmpwi r24, 8
/* 8046506C  3B 7B 00 02 */	addi r27, r27, 2
/* 80465070  3B 9C 00 04 */	addi r28, r28, 4
/* 80465074  41 80 FF D0 */	blt lbl_80465044
/* 80465078  48 00 03 20 */	b lbl_80465398
lbl_8046507C:
/* 8046507C  3B 80 00 00 */	li r28, 0
/* 80465080  3B 20 00 04 */	li r25, 4
/* 80465084  3B 60 00 08 */	li r27, 8
/* 80465088  3B FF 02 F4 */	addi r31, r31, 0x2f4
lbl_8046508C:
/* 8046508C  7F C3 F3 78 */	mr r3, r30
/* 80465090  7F A4 EB 78 */	mr r4, r29
/* 80465094  7C BF E0 2E */	lwzx r5, r31, r28
/* 80465098  38 19 06 B8 */	addi r0, r25, 0x6b8
/* 8046509C  7C DD 00 AE */	lbzx r6, r29, r0
/* 804650A0  4B BE 26 B8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 804650A4  38 1B 06 92 */	addi r0, r27, 0x692
/* 804650A8  7C 7D 03 2E */	sthx r3, r29, r0
/* 804650AC  3B 39 00 01 */	addi r25, r25, 1
/* 804650B0  2C 19 00 08 */	cmpwi r25, 8
/* 804650B4  3B 7B 00 02 */	addi r27, r27, 2
/* 804650B8  3B 9C 00 04 */	addi r28, r28, 4
/* 804650BC  41 80 FF D0 */	blt lbl_8046508C
/* 804650C0  48 00 02 D8 */	b lbl_80465398
lbl_804650C4:
/* 804650C4  28 03 00 00 */	cmplwi r3, 0
/* 804650C8  41 82 00 58 */	beq lbl_80465120
/* 804650CC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804650D0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804650D4  41 82 00 4C */	beq lbl_80465120
/* 804650D8  3B 80 00 00 */	li r28, 0
/* 804650DC  3B 20 00 04 */	li r25, 4
/* 804650E0  3B 60 00 08 */	li r27, 8
/* 804650E4  3B FF 03 24 */	addi r31, r31, 0x324
lbl_804650E8:
/* 804650E8  7F C3 F3 78 */	mr r3, r30
/* 804650EC  7F A4 EB 78 */	mr r4, r29
/* 804650F0  7C BF E0 2E */	lwzx r5, r31, r28
/* 804650F4  38 19 06 B8 */	addi r0, r25, 0x6b8
/* 804650F8  7C DD 00 AE */	lbzx r6, r29, r0
/* 804650FC  4B BE 26 5C */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80465100  38 1B 06 92 */	addi r0, r27, 0x692
/* 80465104  7C 7D 03 2E */	sthx r3, r29, r0
/* 80465108  3B 39 00 01 */	addi r25, r25, 1
/* 8046510C  2C 19 00 08 */	cmpwi r25, 8
/* 80465110  3B 7B 00 02 */	addi r27, r27, 2
/* 80465114  3B 9C 00 04 */	addi r28, r28, 4
/* 80465118  41 80 FF D0 */	blt lbl_804650E8
/* 8046511C  48 00 02 7C */	b lbl_80465398
lbl_80465120:
/* 80465120  3B 80 00 00 */	li r28, 0
/* 80465124  3B 20 00 04 */	li r25, 4
/* 80465128  3B 60 00 08 */	li r27, 8
/* 8046512C  3B FF 03 14 */	addi r31, r31, 0x314
lbl_80465130:
/* 80465130  7F C3 F3 78 */	mr r3, r30
/* 80465134  7F A4 EB 78 */	mr r4, r29
/* 80465138  7C BF E0 2E */	lwzx r5, r31, r28
/* 8046513C  38 19 06 B8 */	addi r0, r25, 0x6b8
/* 80465140  7C DD 00 AE */	lbzx r6, r29, r0
/* 80465144  4B BE 26 14 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80465148  38 1B 06 92 */	addi r0, r27, 0x692
/* 8046514C  7C 7D 03 2E */	sthx r3, r29, r0
/* 80465150  3B 39 00 01 */	addi r25, r25, 1
/* 80465154  2C 19 00 08 */	cmpwi r25, 8
/* 80465158  3B 7B 00 02 */	addi r27, r27, 2
/* 8046515C  3B 9C 00 04 */	addi r28, r28, 4
/* 80465160  41 80 FF D0 */	blt lbl_80465130
/* 80465164  48 00 02 34 */	b lbl_80465398
lbl_80465168:
/* 80465168  28 03 00 00 */	cmplwi r3, 0
/* 8046516C  41 82 00 58 */	beq lbl_804651C4
/* 80465170  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80465174  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80465178  41 82 00 4C */	beq lbl_804651C4
/* 8046517C  3B 80 00 00 */	li r28, 0
/* 80465180  3B 20 00 04 */	li r25, 4
/* 80465184  3B 60 00 08 */	li r27, 8
/* 80465188  3B FF 03 44 */	addi r31, r31, 0x344
lbl_8046518C:
/* 8046518C  7F C3 F3 78 */	mr r3, r30
/* 80465190  7F A4 EB 78 */	mr r4, r29
/* 80465194  7C BF E0 2E */	lwzx r5, r31, r28
/* 80465198  38 19 06 B8 */	addi r0, r25, 0x6b8
/* 8046519C  7C DD 00 AE */	lbzx r6, r29, r0
/* 804651A0  4B BE 25 B8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 804651A4  38 1B 06 92 */	addi r0, r27, 0x692
/* 804651A8  7C 7D 03 2E */	sthx r3, r29, r0
/* 804651AC  3B 39 00 01 */	addi r25, r25, 1
/* 804651B0  2C 19 00 08 */	cmpwi r25, 8
/* 804651B4  3B 7B 00 02 */	addi r27, r27, 2
/* 804651B8  3B 9C 00 04 */	addi r28, r28, 4
/* 804651BC  41 80 FF D0 */	blt lbl_8046518C
/* 804651C0  48 00 01 D8 */	b lbl_80465398
lbl_804651C4:
/* 804651C4  3B 80 00 00 */	li r28, 0
/* 804651C8  3B 20 00 04 */	li r25, 4
/* 804651CC  3B 60 00 08 */	li r27, 8
/* 804651D0  3B FF 03 34 */	addi r31, r31, 0x334
lbl_804651D4:
/* 804651D4  7F C3 F3 78 */	mr r3, r30
/* 804651D8  7F A4 EB 78 */	mr r4, r29
/* 804651DC  7C BF E0 2E */	lwzx r5, r31, r28
/* 804651E0  38 19 06 B8 */	addi r0, r25, 0x6b8
/* 804651E4  7C DD 00 AE */	lbzx r6, r29, r0
/* 804651E8  4B BE 25 70 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 804651EC  38 1B 06 92 */	addi r0, r27, 0x692
/* 804651F0  7C 7D 03 2E */	sthx r3, r29, r0
/* 804651F4  3B 39 00 01 */	addi r25, r25, 1
/* 804651F8  2C 19 00 08 */	cmpwi r25, 8
/* 804651FC  3B 7B 00 02 */	addi r27, r27, 2
/* 80465200  3B 9C 00 04 */	addi r28, r28, 4
/* 80465204  41 80 FF D0 */	blt lbl_804651D4
/* 80465208  48 00 01 90 */	b lbl_80465398
lbl_8046520C:
/* 8046520C  3B 80 00 00 */	li r28, 0
/* 80465210  3B 20 00 0C */	li r25, 0xc
/* 80465214  3B 60 00 18 */	li r27, 0x18
/* 80465218  3B FF 03 54 */	addi r31, r31, 0x354
lbl_8046521C:
/* 8046521C  7F C3 F3 78 */	mr r3, r30
/* 80465220  7F A4 EB 78 */	mr r4, r29
/* 80465224  7C BF E0 2E */	lwzx r5, r31, r28
/* 80465228  38 19 06 B8 */	addi r0, r25, 0x6b8
/* 8046522C  7C DD 00 AE */	lbzx r6, r29, r0
/* 80465230  4B BE 25 28 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80465234  38 1B 06 92 */	addi r0, r27, 0x692
/* 80465238  7C 7D 03 2E */	sthx r3, r29, r0
/* 8046523C  3B 39 00 01 */	addi r25, r25, 1
/* 80465240  2C 19 00 13 */	cmpwi r25, 0x13
/* 80465244  3B 7B 00 02 */	addi r27, r27, 2
/* 80465248  3B 9C 00 04 */	addi r28, r28, 4
/* 8046524C  41 80 FF D0 */	blt lbl_8046521C
/* 80465250  48 00 01 48 */	b lbl_80465398
lbl_80465254:
/* 80465254  28 03 00 00 */	cmplwi r3, 0
/* 80465258  41 82 00 58 */	beq lbl_804652B0
/* 8046525C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80465260  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80465264  41 82 00 4C */	beq lbl_804652B0
/* 80465268  3B 80 00 00 */	li r28, 0
/* 8046526C  3B 20 00 04 */	li r25, 4
/* 80465270  3B 60 00 08 */	li r27, 8
/* 80465274  3B FF 03 80 */	addi r31, r31, 0x380
lbl_80465278:
/* 80465278  7F C3 F3 78 */	mr r3, r30
/* 8046527C  7F A4 EB 78 */	mr r4, r29
/* 80465280  7C BF E0 2E */	lwzx r5, r31, r28
/* 80465284  38 19 06 B8 */	addi r0, r25, 0x6b8
/* 80465288  7C DD 00 AE */	lbzx r6, r29, r0
/* 8046528C  4B BE 24 CC */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80465290  38 1B 06 92 */	addi r0, r27, 0x692
/* 80465294  7C 7D 03 2E */	sthx r3, r29, r0
/* 80465298  3B 39 00 01 */	addi r25, r25, 1
/* 8046529C  2C 19 00 08 */	cmpwi r25, 8
/* 804652A0  3B 7B 00 02 */	addi r27, r27, 2
/* 804652A4  3B 9C 00 04 */	addi r28, r28, 4
/* 804652A8  41 80 FF D0 */	blt lbl_80465278
/* 804652AC  48 00 00 EC */	b lbl_80465398
lbl_804652B0:
/* 804652B0  3B 80 00 00 */	li r28, 0
/* 804652B4  3B 20 00 04 */	li r25, 4
/* 804652B8  3B 60 00 08 */	li r27, 8
/* 804652BC  3B FF 03 70 */	addi r31, r31, 0x370
lbl_804652C0:
/* 804652C0  7F C3 F3 78 */	mr r3, r30
/* 804652C4  7F A4 EB 78 */	mr r4, r29
/* 804652C8  7C BF E0 2E */	lwzx r5, r31, r28
/* 804652CC  38 19 06 B8 */	addi r0, r25, 0x6b8
/* 804652D0  7C DD 00 AE */	lbzx r6, r29, r0
/* 804652D4  4B BE 24 84 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 804652D8  38 1B 06 92 */	addi r0, r27, 0x692
/* 804652DC  7C 7D 03 2E */	sthx r3, r29, r0
/* 804652E0  3B 39 00 01 */	addi r25, r25, 1
/* 804652E4  2C 19 00 08 */	cmpwi r25, 8
/* 804652E8  3B 7B 00 02 */	addi r27, r27, 2
/* 804652EC  3B 9C 00 04 */	addi r28, r28, 4
/* 804652F0  41 80 FF D0 */	blt lbl_804652C0
/* 804652F4  48 00 00 A4 */	b lbl_80465398
lbl_804652F8:
/* 804652F8  28 03 00 00 */	cmplwi r3, 0
/* 804652FC  41 82 00 58 */	beq lbl_80465354
/* 80465300  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80465304  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80465308  41 82 00 4C */	beq lbl_80465354
/* 8046530C  3B 80 00 00 */	li r28, 0
/* 80465310  3B 20 00 04 */	li r25, 4
/* 80465314  3B 60 00 08 */	li r27, 8
/* 80465318  3B FF 03 A0 */	addi r31, r31, 0x3a0
lbl_8046531C:
/* 8046531C  7F C3 F3 78 */	mr r3, r30
/* 80465320  7F A4 EB 78 */	mr r4, r29
/* 80465324  7C BF E0 2E */	lwzx r5, r31, r28
/* 80465328  38 19 06 B8 */	addi r0, r25, 0x6b8
/* 8046532C  7C DD 00 AE */	lbzx r6, r29, r0
/* 80465330  4B BE 24 28 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80465334  38 1B 06 92 */	addi r0, r27, 0x692
/* 80465338  7C 7D 03 2E */	sthx r3, r29, r0
/* 8046533C  3B 39 00 01 */	addi r25, r25, 1
/* 80465340  2C 19 00 08 */	cmpwi r25, 8
/* 80465344  3B 7B 00 02 */	addi r27, r27, 2
/* 80465348  3B 9C 00 04 */	addi r28, r28, 4
/* 8046534C  41 80 FF D0 */	blt lbl_8046531C
/* 80465350  48 00 00 48 */	b lbl_80465398
lbl_80465354:
/* 80465354  3B 60 00 00 */	li r27, 0
/* 80465358  3B 20 00 04 */	li r25, 4
/* 8046535C  3B 80 00 08 */	li r28, 8
/* 80465360  3B FF 03 90 */	addi r31, r31, 0x390
lbl_80465364:
/* 80465364  7F C3 F3 78 */	mr r3, r30
/* 80465368  7F A4 EB 78 */	mr r4, r29
/* 8046536C  7C BF D8 2E */	lwzx r5, r31, r27
/* 80465370  38 19 06 B8 */	addi r0, r25, 0x6b8
/* 80465374  7C DD 00 AE */	lbzx r6, r29, r0
/* 80465378  4B BE 23 E0 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8046537C  38 1C 06 92 */	addi r0, r28, 0x692
/* 80465380  7C 7D 03 2E */	sthx r3, r29, r0
/* 80465384  3B 39 00 01 */	addi r25, r25, 1
/* 80465388  2C 19 00 08 */	cmpwi r25, 8
/* 8046538C  3B 9C 00 02 */	addi r28, r28, 2
/* 80465390  3B 7B 00 04 */	addi r27, r27, 4
/* 80465394  41 80 FF D0 */	blt lbl_80465364
lbl_80465398:
/* 80465398  39 61 00 30 */	addi r11, r1, 0x30
/* 8046539C  4B EF CE 78 */	b _restgpr_24
/* 804653A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804653A4  7C 08 03 A6 */	mtlr r0
/* 804653A8  38 21 00 30 */	addi r1, r1, 0x30
/* 804653AC  4E 80 00 20 */	blr 
