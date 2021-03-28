lbl_8008685C:
/* 8008685C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80086860  7C 08 02 A6 */	mflr r0
/* 80086864  90 01 00 44 */	stw r0, 0x44(r1)
/* 80086868  39 61 00 40 */	addi r11, r1, 0x40
/* 8008686C  48 2D B9 5D */	bl _savegpr_24
/* 80086870  7C 78 1B 78 */	mr r24, r3
/* 80086874  7D 19 43 78 */	mr r25, r8
/* 80086878  7D 3A 4B 78 */	mr r26, r9
/* 8008687C  7D 5B 53 78 */	mr r27, r10
/* 80086880  83 81 00 48 */	lwz r28, 0x48(r1)
/* 80086884  83 A1 00 50 */	lwz r29, 0x50(r1)
/* 80086888  83 C1 00 54 */	lwz r30, 0x54(r1)
/* 8008688C  8B E1 00 5B */	lbz r31, 0x5b(r1)
/* 80086890  80 08 00 58 */	lwz r0, 0x58(r8)
/* 80086894  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80086898  40 82 02 10 */	bne lbl_80086AA8
/* 8008689C  80 1A 00 9C */	lwz r0, 0x9c(r26)
/* 800868A0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800868A4  40 82 02 04 */	bne lbl_80086AA8
/* 800868A8  80 79 00 10 */	lwz r3, 0x10(r25)
/* 800868AC  3C 03 F0 00 */	addis r0, r3, 0xf000
/* 800868B0  28 00 00 00 */	cmplwi r0, 0
/* 800868B4  40 82 00 28 */	bne lbl_800868DC
/* 800868B8  7F 43 D3 78 */	mr r3, r26
/* 800868BC  48 1D D1 8D */	bl GetAc__8cCcD_ObjFv
/* 800868C0  28 03 00 00 */	cmplwi r3, 0
/* 800868C4  41 82 00 18 */	beq lbl_800868DC
/* 800868C8  7F 43 D3 78 */	mr r3, r26
/* 800868CC  48 1D D1 7D */	bl GetAc__8cCcD_ObjFv
/* 800868D0  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 800868D4  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 800868D8  41 82 01 D0 */	beq lbl_80086AA8
lbl_800868DC:
/* 800868DC  80 99 00 10 */	lwz r4, 0x10(r25)
/* 800868E0  3C 60 D8 00 */	lis r3, 0xD800 /* 0xD8004012@ha */
/* 800868E4  38 03 40 12 */	addi r0, r3, 0x4012 /* 0xD8004012@l */
/* 800868E8  7C 80 00 39 */	and. r0, r4, r0
/* 800868EC  41 82 00 14 */	beq lbl_80086900
/* 800868F0  88 1A 00 BB */	lbz r0, 0xbb(r26)
/* 800868F4  2C 00 00 01 */	cmpwi r0, 1
/* 800868F8  40 82 00 08 */	bne lbl_80086900
/* 800868FC  48 00 01 AC */	b lbl_80086AA8
lbl_80086900:
/* 80086900  28 04 40 00 */	cmplwi r4, 0x4000
/* 80086904  40 82 00 10 */	bne lbl_80086914
/* 80086908  80 1A 00 9C */	lwz r0, 0x9c(r26)
/* 8008690C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80086910  40 82 01 98 */	bne lbl_80086AA8
lbl_80086914:
/* 80086914  28 04 20 00 */	cmplwi r4, 0x2000
/* 80086918  40 82 00 10 */	bne lbl_80086928
/* 8008691C  80 1A 00 9C */	lwz r0, 0x9c(r26)
/* 80086920  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80086924  40 82 01 84 */	bne lbl_80086AA8
lbl_80086928:
/* 80086928  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8008692C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80086930  40 82 01 78 */	bne lbl_80086AA8
/* 80086934  28 1F 00 00 */	cmplwi r31, 0
/* 80086938  40 82 01 0C */	bne lbl_80086A44
/* 8008693C  88 79 00 76 */	lbz r3, 0x76(r25)
/* 80086940  2C 03 00 00 */	cmpwi r3, 0
/* 80086944  40 82 00 10 */	bne lbl_80086954
/* 80086948  88 1A 00 BA */	lbz r0, 0xba(r26)
/* 8008694C  2C 00 00 08 */	cmpwi r0, 8
/* 80086950  40 82 01 58 */	bne lbl_80086AA8
lbl_80086954:
/* 80086954  2C 03 00 04 */	cmpwi r3, 4
/* 80086958  40 82 00 10 */	bne lbl_80086968
/* 8008695C  88 1A 00 BA */	lbz r0, 0xba(r26)
/* 80086960  2C 00 00 04 */	cmpwi r0, 4
/* 80086964  41 82 01 44 */	beq lbl_80086AA8
lbl_80086968:
/* 80086968  7F 03 C3 78 */	mr r3, r24
/* 8008696C  7F 24 CB 78 */	mr r4, r25
/* 80086970  7F 65 DB 78 */	mr r5, r27
/* 80086974  7F 86 E3 78 */	mr r6, r28
/* 80086978  38 E1 00 10 */	addi r7, r1, 0x10
/* 8008697C  81 98 28 48 */	lwz r12, 0x2848(r24)
/* 80086980  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80086984  7D 89 03 A6 */	mtctr r12
/* 80086988  4E 80 04 21 */	bctrl 
/* 8008698C  88 1A 00 BA */	lbz r0, 0xba(r26)
/* 80086990  2C 00 00 05 */	cmpwi r0, 5
/* 80086994  41 82 00 0C */	beq lbl_800869A0
/* 80086998  2C 00 00 08 */	cmpwi r0, 8
/* 8008699C  40 82 00 3C */	bne lbl_800869D8
lbl_800869A0:
/* 800869A0  83 19 00 10 */	lwz r24, 0x10(r25)
/* 800869A4  7F 43 D3 78 */	mr r3, r26
/* 800869A8  48 1D D0 A1 */	bl GetAc__8cCcD_ObjFv
/* 800869AC  7C 65 1B 78 */	mr r5, r3
/* 800869B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800869B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800869B8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800869BC  38 80 00 02 */	li r4, 2
/* 800869C0  7F C6 F3 78 */	mr r6, r30
/* 800869C4  38 E1 00 10 */	addi r7, r1, 0x10
/* 800869C8  39 00 00 00 */	li r8, 0
/* 800869CC  7F 09 C3 78 */	mr r9, r24
/* 800869D0  4B FC 58 49 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 800869D4  48 00 00 D4 */	b lbl_80086AA8
lbl_800869D8:
/* 800869D8  2C 00 00 03 */	cmpwi r0, 3
/* 800869DC  40 82 00 0C */	bne lbl_800869E8
/* 800869E0  3B 60 00 03 */	li r27, 3
/* 800869E4  48 00 00 08 */	b lbl_800869EC
lbl_800869E8:
/* 800869E8  8B 79 00 76 */	lbz r27, 0x76(r25)
lbl_800869EC:
/* 800869EC  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 800869F0  28 00 00 01 */	cmplwi r0, 1
/* 800869F4  41 82 00 0C */	beq lbl_80086A00
/* 800869F8  28 00 00 03 */	cmplwi r0, 3
/* 800869FC  40 82 00 10 */	bne lbl_80086A0C
lbl_80086A00:
/* 80086A00  88 19 00 14 */	lbz r0, 0x14(r25)
/* 80086A04  28 00 00 00 */	cmplwi r0, 0
/* 80086A08  41 82 00 A0 */	beq lbl_80086AA8
lbl_80086A0C:
/* 80086A0C  83 19 00 10 */	lwz r24, 0x10(r25)
/* 80086A10  7F 43 D3 78 */	mr r3, r26
/* 80086A14  48 1D D0 35 */	bl GetAc__8cCcD_ObjFv
/* 80086A18  7C 65 1B 78 */	mr r5, r3
/* 80086A1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80086A20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80086A24  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80086A28  7F 64 DB 78 */	mr r4, r27
/* 80086A2C  7F C6 F3 78 */	mr r6, r30
/* 80086A30  38 E1 00 10 */	addi r7, r1, 0x10
/* 80086A34  39 00 00 00 */	li r8, 0
/* 80086A38  7F 09 C3 78 */	mr r9, r24
/* 80086A3C  4B FC 57 DD */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80086A40  48 00 00 68 */	b lbl_80086AA8
lbl_80086A44:
/* 80086A44  88 1A 00 BA */	lbz r0, 0xba(r26)
/* 80086A48  2C 00 00 00 */	cmpwi r0, 0
/* 80086A4C  41 82 00 5C */	beq lbl_80086AA8
/* 80086A50  7F 03 C3 78 */	mr r3, r24
/* 80086A54  7F 24 CB 78 */	mr r4, r25
/* 80086A58  7F 65 DB 78 */	mr r5, r27
/* 80086A5C  7F 86 E3 78 */	mr r6, r28
/* 80086A60  38 E1 00 08 */	addi r7, r1, 8
/* 80086A64  81 98 28 48 */	lwz r12, 0x2848(r24)
/* 80086A68  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80086A6C  7D 89 03 A6 */	mtctr r12
/* 80086A70  4E 80 04 21 */	bctrl 
/* 80086A74  83 19 00 10 */	lwz r24, 0x10(r25)
/* 80086A78  7F 43 D3 78 */	mr r3, r26
/* 80086A7C  48 1D CF CD */	bl GetAc__8cCcD_ObjFv
/* 80086A80  7C 65 1B 78 */	mr r5, r3
/* 80086A84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80086A88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80086A8C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80086A90  88 9A 00 BA */	lbz r4, 0xba(r26)
/* 80086A94  7F C6 F3 78 */	mr r6, r30
/* 80086A98  38 E1 00 08 */	addi r7, r1, 8
/* 80086A9C  39 00 00 00 */	li r8, 0
/* 80086AA0  7F 09 C3 78 */	mr r9, r24
/* 80086AA4  4B FC 57 75 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_80086AA8:
/* 80086AA8  39 61 00 40 */	addi r11, r1, 0x40
/* 80086AAC  48 2D B7 69 */	bl _restgpr_24
/* 80086AB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80086AB4  7C 08 03 A6 */	mtlr r0
/* 80086AB8  38 21 00 40 */	addi r1, r1, 0x40
/* 80086ABC  4E 80 00 20 */	blr 
