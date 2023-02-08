lbl_802E08E4:
/* 802E08E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E08E8  7C 08 02 A6 */	mflr r0
/* 802E08EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E08F0  39 61 00 40 */	addi r11, r1, 0x40
/* 802E08F4  48 08 18 CD */	bl _savegpr_22
/* 802E08F8  3C 60 80 43 */	lis r3, mPadList__10JUTGamePad-0xC@ha /* 0x804343D8@ha */
/* 802E08FC  3B E3 43 D8 */	addi r31, r3, mPadList__10JUTGamePad-0xC@l /* 0x804343D8@l */
/* 802E0900  38 7F 00 18 */	addi r3, r31, 0x18
/* 802E0904  48 06 E5 9D */	bl PADRead
/* 802E0908  90 6D 8F 60 */	stw r3, sRumbleSupported__10JUTGamePad(r13)
/* 802E090C  80 0D 83 5C */	lwz r0, sClampMode__10JUTGamePad(r13)
/* 802E0910  2C 00 00 02 */	cmpwi r0, 2
/* 802E0914  41 82 00 20 */	beq lbl_802E0934
/* 802E0918  40 80 00 24 */	bge lbl_802E093C
/* 802E091C  2C 00 00 01 */	cmpwi r0, 1
/* 802E0920  40 80 00 08 */	bge lbl_802E0928
/* 802E0924  48 00 00 18 */	b lbl_802E093C
lbl_802E0928:
/* 802E0928  38 7F 00 18 */	addi r3, r31, 0x18
/* 802E092C  48 06 D7 69 */	bl PADClamp
/* 802E0930  48 00 00 0C */	b lbl_802E093C
lbl_802E0934:
/* 802E0934  38 7F 00 18 */	addi r3, r31, 0x18
/* 802E0938  48 06 D8 71 */	bl PADClampCircle
lbl_802E093C:
/* 802E093C  3B C0 00 00 */	li r30, 0
/* 802E0940  3B A0 00 00 */	li r29, 0
/* 802E0944  3B 80 00 00 */	li r28, 0
/* 802E0948  3B 60 00 00 */	li r27, 0
/* 802E094C  3B 40 00 00 */	li r26, 0
/* 802E0950  3F 20 80 00 */	lis r25, 0x8000
lbl_802E0954:
/* 802E0954  7F 37 EC 30 */	srw r23, r25, r29
/* 802E0958  3B 1F 00 18 */	addi r24, r31, 0x18
/* 802E095C  7F 18 D2 14 */	add r24, r24, r26
/* 802E0960  88 78 00 0A */	lbz r3, 0xa(r24)
/* 802E0964  7C 60 07 75 */	extsb. r0, r3
/* 802E0968  40 82 00 6C */	bne lbl_802E09D4
/* 802E096C  38 7F 01 08 */	addi r3, r31, 0x108
/* 802E0970  7C 63 DA 14 */	add r3, r3, r27
/* 802E0974  88 98 00 02 */	lbz r4, 2(r24)
/* 802E0978  88 B8 00 03 */	lbz r5, 3(r24)
/* 802E097C  80 CD 83 58 */	lwz r6, sStickMode__10JUTGamePad(r13)
/* 802E0980  38 E0 00 00 */	li r7, 0
/* 802E0984  3A FF 00 48 */	addi r23, r31, 0x48
/* 802E0988  7E F7 E2 14 */	add r23, r23, r28
/* 802E098C  81 17 00 00 */	lwz r8, 0(r23)
/* 802E0990  48 00 08 A9 */	bl update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStickUl
/* 802E0994  54 76 C0 0E */	slwi r22, r3, 0x18
/* 802E0998  38 7F 01 48 */	addi r3, r31, 0x148
/* 802E099C  7C 63 DA 14 */	add r3, r3, r27
/* 802E09A0  88 98 00 04 */	lbz r4, 4(r24)
/* 802E09A4  88 B8 00 05 */	lbz r5, 5(r24)
/* 802E09A8  80 CD 83 58 */	lwz r6, sStickMode__10JUTGamePad(r13)
/* 802E09AC  38 E0 00 01 */	li r7, 1
/* 802E09B0  81 17 00 00 */	lwz r8, 0(r23)
/* 802E09B4  48 00 08 85 */	bl update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStickUl
/* 802E09B8  54 60 80 1E */	slwi r0, r3, 0x10
/* 802E09BC  7E D6 03 78 */	or r22, r22, r0
/* 802E09C0  7E E3 BB 78 */	mr r3, r23
/* 802E09C4  7F 04 C3 78 */	mr r4, r24
/* 802E09C8  7E C5 B3 78 */	mr r5, r22
/* 802E09CC  48 00 06 C1 */	bl update__Q210JUTGamePad7CButtonFPC9PADStatusUl
/* 802E09D0  48 00 00 90 */	b lbl_802E0A60
lbl_802E09D4:
/* 802E09D4  7C 60 07 74 */	extsb r0, r3
/* 802E09D8  2C 00 FF FF */	cmpwi r0, -1
/* 802E09DC  40 82 00 6C */	bne lbl_802E0A48
/* 802E09E0  38 7F 01 08 */	addi r3, r31, 0x108
/* 802E09E4  7C 63 DA 14 */	add r3, r3, r27
/* 802E09E8  38 80 00 00 */	li r4, 0
/* 802E09EC  38 A0 00 00 */	li r5, 0
/* 802E09F0  80 CD 83 58 */	lwz r6, sStickMode__10JUTGamePad(r13)
/* 802E09F4  38 E0 00 00 */	li r7, 0
/* 802E09F8  39 00 00 00 */	li r8, 0
/* 802E09FC  48 00 08 3D */	bl update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStickUl
/* 802E0A00  38 7F 01 48 */	addi r3, r31, 0x148
/* 802E0A04  7C 63 DA 14 */	add r3, r3, r27
/* 802E0A08  38 80 00 00 */	li r4, 0
/* 802E0A0C  38 A0 00 00 */	li r5, 0
/* 802E0A10  80 CD 83 58 */	lwz r6, sStickMode__10JUTGamePad(r13)
/* 802E0A14  38 E0 00 01 */	li r7, 1
/* 802E0A18  39 00 00 00 */	li r8, 0
/* 802E0A1C  48 00 08 1D */	bl update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStickUl
/* 802E0A20  38 7F 00 48 */	addi r3, r31, 0x48
/* 802E0A24  7C 63 E2 14 */	add r3, r3, r28
/* 802E0A28  38 80 00 00 */	li r4, 0
/* 802E0A2C  38 A0 00 00 */	li r5, 0
/* 802E0A30  48 00 06 5D */	bl update__Q210JUTGamePad7CButtonFPC9PADStatusUl
/* 802E0A34  80 0D 8F 58 */	lwz r0, sSuppressPadReset__10JUTGamePad(r13)
/* 802E0A38  7C 00 B8 39 */	and. r0, r0, r23
/* 802E0A3C  40 82 00 24 */	bne lbl_802E0A60
/* 802E0A40  7F DE BB 78 */	or r30, r30, r23
/* 802E0A44  48 00 00 1C */	b lbl_802E0A60
lbl_802E0A48:
/* 802E0A48  38 00 00 00 */	li r0, 0
/* 802E0A4C  38 7F 00 48 */	addi r3, r31, 0x48
/* 802E0A50  7C 63 E2 14 */	add r3, r3, r28
/* 802E0A54  90 03 00 04 */	stw r0, 4(r3)
/* 802E0A58  90 03 00 08 */	stw r0, 8(r3)
/* 802E0A5C  90 03 00 18 */	stw r0, 0x18(r3)
lbl_802E0A60:
/* 802E0A60  3B BD 00 01 */	addi r29, r29, 1
/* 802E0A64  2C 1D 00 04 */	cmpwi r29, 4
/* 802E0A68  3B 9C 00 30 */	addi r28, r28, 0x30
/* 802E0A6C  3B 7B 00 10 */	addi r27, r27, 0x10
/* 802E0A70  3B 5A 00 0C */	addi r26, r26, 0xc
/* 802E0A74  41 80 FE E0 */	blt lbl_802E0954
/* 802E0A78  83 3F 00 0C */	lwz r25, 0xc(r31)
/* 802E0A7C  48 00 01 08 */	b lbl_802E0B84
lbl_802E0A80:
/* 802E0A80  80 99 00 00 */	lwz r4, 0(r25)
/* 802E0A84  80 64 00 94 */	lwz r3, 0x94(r4)
/* 802E0A88  28 03 00 00 */	cmplwi r3, 0
/* 802E0A8C  41 82 00 88 */	beq lbl_802E0B14
/* 802E0A90  88 03 00 04 */	lbz r0, 4(r3)
/* 802E0A94  28 00 00 00 */	cmplwi r0, 0
/* 802E0A98  41 82 00 7C */	beq lbl_802E0B14
/* 802E0A9C  38 81 00 08 */	addi r4, r1, 8
/* 802E0AA0  81 83 00 00 */	lwz r12, 0(r3)
/* 802E0AA4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E0AA8  7D 89 03 A6 */	mtctr r12
/* 802E0AAC  4E 80 04 21 */	bctrl 
/* 802E0AB0  81 19 00 00 */	lwz r8, 0(r25)
/* 802E0AB4  38 68 00 48 */	addi r3, r8, 0x48
/* 802E0AB8  88 81 00 0A */	lbz r4, 0xa(r1)
/* 802E0ABC  88 A1 00 0B */	lbz r5, 0xb(r1)
/* 802E0AC0  80 CD 83 58 */	lwz r6, sStickMode__10JUTGamePad(r13)
/* 802E0AC4  38 E0 00 00 */	li r7, 0
/* 802E0AC8  81 08 00 18 */	lwz r8, 0x18(r8)
/* 802E0ACC  48 00 07 6D */	bl update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStickUl
/* 802E0AD0  54 76 C0 0E */	slwi r22, r3, 0x18
/* 802E0AD4  81 19 00 00 */	lwz r8, 0(r25)
/* 802E0AD8  38 68 00 58 */	addi r3, r8, 0x58
/* 802E0ADC  88 81 00 0C */	lbz r4, 0xc(r1)
/* 802E0AE0  88 A1 00 0D */	lbz r5, 0xd(r1)
/* 802E0AE4  80 CD 83 58 */	lwz r6, sStickMode__10JUTGamePad(r13)
/* 802E0AE8  38 E0 00 01 */	li r7, 1
/* 802E0AEC  81 08 00 18 */	lwz r8, 0x18(r8)
/* 802E0AF0  48 00 07 49 */	bl update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStickUl
/* 802E0AF4  54 60 80 1E */	slwi r0, r3, 0x10
/* 802E0AF8  7E D6 03 78 */	or r22, r22, r0
/* 802E0AFC  80 79 00 00 */	lwz r3, 0(r25)
/* 802E0B00  38 63 00 18 */	addi r3, r3, 0x18
/* 802E0B04  38 81 00 08 */	addi r4, r1, 8
/* 802E0B08  7E C5 B3 78 */	mr r5, r22
/* 802E0B0C  48 00 05 81 */	bl update__Q210JUTGamePad7CButtonFPC9PADStatusUl
/* 802E0B10  48 00 00 20 */	b lbl_802E0B30
lbl_802E0B14:
/* 802E0B14  A8 04 00 7C */	lha r0, 0x7c(r4)
/* 802E0B18  2C 00 FF FF */	cmpwi r0, -1
/* 802E0B1C  40 82 00 0C */	bne lbl_802E0B28
/* 802E0B20  7C 83 23 78 */	mr r3, r4
/* 802E0B24  48 00 00 99 */	bl assign__10JUTGamePadFv
lbl_802E0B28:
/* 802E0B28  80 79 00 00 */	lwz r3, 0(r25)
/* 802E0B2C  48 00 01 AD */	bl update__10JUTGamePadFv
lbl_802E0B30:
/* 802E0B30  80 99 00 00 */	lwz r4, 0(r25)
/* 802E0B34  80 64 00 90 */	lwz r3, 0x90(r4)
/* 802E0B38  28 03 00 00 */	cmplwi r3, 0
/* 802E0B3C  41 82 00 44 */	beq lbl_802E0B80
/* 802E0B40  88 03 00 04 */	lbz r0, 4(r3)
/* 802E0B44  28 00 00 00 */	cmplwi r0, 0
/* 802E0B48  41 82 00 38 */	beq lbl_802E0B80
/* 802E0B4C  A8 04 00 7C */	lha r0, 0x7c(r4)
/* 802E0B50  2C 00 00 00 */	cmpwi r0, 0
/* 802E0B54  41 80 00 2C */	blt lbl_802E0B80
/* 802E0B58  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802E0B5C  38 9F 00 18 */	addi r4, r31, 0x18
/* 802E0B60  7C 84 02 14 */	add r4, r4, r0
/* 802E0B64  88 04 00 0A */	lbz r0, 0xa(r4)
/* 802E0B68  7C 00 07 75 */	extsb. r0, r0
/* 802E0B6C  40 82 00 14 */	bne lbl_802E0B80
/* 802E0B70  81 83 00 00 */	lwz r12, 0(r3)
/* 802E0B74  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802E0B78  7D 89 03 A6 */	mtctr r12
/* 802E0B7C  4E 80 04 21 */	bctrl 
lbl_802E0B80:
/* 802E0B80  83 39 00 0C */	lwz r25, 0xc(r25)
lbl_802E0B84:
/* 802E0B84  28 19 00 00 */	cmplwi r25, 0
/* 802E0B88  40 82 FE F8 */	bne lbl_802E0A80
/* 802E0B8C  28 1E 00 00 */	cmplwi r30, 0
/* 802E0B90  41 82 00 0C */	beq lbl_802E0B9C
/* 802E0B94  7F C3 F3 78 */	mr r3, r30
/* 802E0B98  48 06 DF 95 */	bl PADReset
lbl_802E0B9C:
/* 802E0B9C  48 00 04 09 */	bl checkResetSwitch__10JUTGamePadFv
/* 802E0BA0  80 6D 8F 60 */	lwz r3, sRumbleSupported__10JUTGamePad(r13)
/* 802E0BA4  39 61 00 40 */	addi r11, r1, 0x40
/* 802E0BA8  48 08 16 65 */	bl _restgpr_22
/* 802E0BAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E0BB0  7C 08 03 A6 */	mtlr r0
/* 802E0BB4  38 21 00 40 */	addi r1, r1, 0x40
/* 802E0BB8  4E 80 00 20 */	blr 
