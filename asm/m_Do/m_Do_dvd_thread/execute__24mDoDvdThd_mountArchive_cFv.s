lbl_80015EDC:
/* 80015EDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80015EE0  7C 08 02 A6 */	mflr r0
/* 80015EE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80015EE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80015EEC  48 34 C2 E1 */	bl _savegpr_25
/* 80015EF0  7C 7A 1B 78 */	mr r26, r3
/* 80015EF4  3B C0 00 00 */	li r30, 0
/* 80015EF8  3B A0 00 00 */	li r29, 0
/* 80015EFC  3B 80 00 00 */	li r28, 0
/* 80015F00  3B 60 00 00 */	li r27, 0
/* 80015F04  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80015F08  28 03 00 00 */	cmplwi r3, 0
/* 80015F0C  41 82 00 08 */	beq lbl_80015F14
/* 80015F10  48 00 00 08 */	b lbl_80015F18
lbl_80015F14:
/* 80015F14  4B FF 8E D9 */	bl mDoExt_getArchiveHeap__Fv
lbl_80015F18:
/* 80015F18  7C 79 1B 78 */	mr r25, r3
/* 80015F1C  3C 60 80 37 */	lis r3, m_Do_m_Do_dvd_thread__stringBase0@ha
/* 80015F20  3B E3 41 A8 */	addi r31, r3, m_Do_m_Do_dvd_thread__stringBase0@l
lbl_80015F24:
/* 80015F24  4B FF 8E D1 */	bl mDoExt_getArchiveHeapPtr__Fv
/* 80015F28  7C 19 18 40 */	cmplw r25, r3
/* 80015F2C  40 82 00 0C */	bne lbl_80015F38
/* 80015F30  3B 80 00 01 */	li r28, 1
/* 80015F34  48 00 00 3C */	b lbl_80015F70
lbl_80015F38:
/* 80015F38  4B FF 8E 49 */	bl mDoExt_getZeldaHeap__Fv
/* 80015F3C  7C 19 18 40 */	cmplw r25, r3
/* 80015F40  40 82 00 0C */	bne lbl_80015F4C
/* 80015F44  3B C0 00 01 */	li r30, 1
/* 80015F48  48 00 00 28 */	b lbl_80015F70
lbl_80015F4C:
/* 80015F4C  4B FF 8E 05 */	bl mDoExt_getGameHeap__Fv
/* 80015F50  7C 19 18 40 */	cmplw r25, r3
/* 80015F54  40 82 00 0C */	bne lbl_80015F60
/* 80015F58  3B A0 00 01 */	li r29, 1
/* 80015F5C  48 00 00 14 */	b lbl_80015F70
lbl_80015F60:
/* 80015F60  4B FF 8E D1 */	bl mDoExt_getJ2dHeap__Fv
/* 80015F64  7C 19 18 40 */	cmplw r25, r3
/* 80015F68  40 82 00 08 */	bne lbl_80015F70
/* 80015F6C  3B 60 00 01 */	li r27, 1
lbl_80015F70:
/* 80015F70  88 1A 00 14 */	lbz r0, 0x14(r26)
/* 80015F74  28 00 00 00 */	cmplwi r0, 0
/* 80015F78  40 82 00 34 */	bne lbl_80015FAC
/* 80015F7C  38 60 00 70 */	li r3, 0x70
/* 80015F80  7F 24 CB 78 */	mr r4, r25
/* 80015F84  38 A0 00 00 */	li r5, 0
/* 80015F88  48 2B 8D 11 */	bl __nw__FUlP7JKRHeapi
/* 80015F8C  7C 60 1B 79 */	or. r0, r3, r3
/* 80015F90  41 82 00 14 */	beq lbl_80015FA4
/* 80015F94  80 9A 00 18 */	lwz r4, 0x18(r26)
/* 80015F98  38 A0 00 01 */	li r5, 1
/* 80015F9C  48 2C 0A 1D */	bl __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
/* 80015FA0  7C 60 1B 78 */	mr r0, r3
lbl_80015FA4:
/* 80015FA4  7C 19 03 78 */	mr r25, r0
/* 80015FA8  48 00 00 30 */	b lbl_80015FD8
lbl_80015FAC:
/* 80015FAC  38 60 00 70 */	li r3, 0x70
/* 80015FB0  7F 24 CB 78 */	mr r4, r25
/* 80015FB4  38 A0 FF FC */	li r5, -4
/* 80015FB8  48 2B 8C E1 */	bl __nw__FUlP7JKRHeapi
/* 80015FBC  7C 60 1B 79 */	or. r0, r3, r3
/* 80015FC0  41 82 00 14 */	beq lbl_80015FD4
/* 80015FC4  80 9A 00 18 */	lwz r4, 0x18(r26)
/* 80015FC8  38 A0 00 02 */	li r5, 2
/* 80015FCC  48 2C 09 ED */	bl __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
/* 80015FD0  7C 60 1B 78 */	mr r0, r3
lbl_80015FD4:
/* 80015FD4  7C 19 03 78 */	mr r25, r0
lbl_80015FD8:
/* 80015FD8  28 19 00 00 */	cmplwi r25, 0
/* 80015FDC  41 82 00 18 */	beq lbl_80015FF4
/* 80015FE0  88 19 00 30 */	lbz r0, 0x30(r25)
/* 80015FE4  28 00 00 00 */	cmplwi r0, 0
/* 80015FE8  41 82 00 0C */	beq lbl_80015FF4
/* 80015FEC  93 3A 00 1C */	stw r25, 0x1c(r26)
/* 80015FF0  48 00 00 E8 */	b lbl_800160D8
lbl_80015FF4:
/* 80015FF4  38 7F 00 3E */	addi r3, r31, 0x3e
/* 80015FF8  4C C6 31 82 */	crclr 6
/* 80015FFC  4B FF 0C 11 */	bl OSReport_Error
/* 80016000  28 19 00 00 */	cmplwi r25, 0
/* 80016004  41 82 00 20 */	beq lbl_80016024
/* 80016008  41 82 00 1C */	beq lbl_80016024
/* 8001600C  7F 23 CB 78 */	mr r3, r25
/* 80016010  38 80 00 01 */	li r4, 1
/* 80016014  81 99 00 00 */	lwz r12, 0(r25)
/* 80016018  81 8C 00 08 */	lwz r12, 8(r12)
/* 8001601C  7D 89 03 A6 */	mtctr r12
/* 80016020  4E 80 04 21 */	bctrl 
lbl_80016024:
/* 80016024  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80016028  40 82 00 24 */	bne lbl_8001604C
/* 8001602C  3C 60 80 37 */	lis r3, m_Do_m_Do_dvd_thread__stringBase0@ha
/* 80016030  38 63 41 A8 */	addi r3, r3, m_Do_m_Do_dvd_thread__stringBase0@l
/* 80016034  38 63 00 6E */	addi r3, r3, 0x6e
/* 80016038  4C C6 31 82 */	crclr 6
/* 8001603C  4B FF 0B D1 */	bl OSReport_Error
/* 80016040  4B FF 8D 41 */	bl mDoExt_getZeldaHeap__Fv
/* 80016044  7C 79 1B 78 */	mr r25, r3
/* 80016048  4B FF FE DC */	b lbl_80015F24
lbl_8001604C:
/* 8001604C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80016050  40 82 00 24 */	bne lbl_80016074
/* 80016054  3C 60 80 37 */	lis r3, m_Do_m_Do_dvd_thread__stringBase0@ha
/* 80016058  38 63 41 A8 */	addi r3, r3, m_Do_m_Do_dvd_thread__stringBase0@l
/* 8001605C  38 63 00 AE */	addi r3, r3, 0xae
/* 80016060  4C C6 31 82 */	crclr 6
/* 80016064  4B FF 0B A9 */	bl OSReport_Error
/* 80016068  4B FF 8D 8D */	bl mDoExt_getArchiveHeapPtr__Fv
/* 8001606C  7C 79 1B 78 */	mr r25, r3
/* 80016070  4B FF FE B4 */	b lbl_80015F24
lbl_80016074:
/* 80016074  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80016078  40 82 00 24 */	bne lbl_8001609C
/* 8001607C  3C 60 80 37 */	lis r3, m_Do_m_Do_dvd_thread__stringBase0@ha
/* 80016080  38 63 41 A8 */	addi r3, r3, m_Do_m_Do_dvd_thread__stringBase0@l
/* 80016084  38 63 00 F2 */	addi r3, r3, 0xf2
/* 80016088  4C C6 31 82 */	crclr 6
/* 8001608C  4B FF 0B 81 */	bl OSReport_Error
/* 80016090  4B FF 8C C1 */	bl mDoExt_getGameHeap__Fv
/* 80016094  7C 79 1B 78 */	mr r25, r3
/* 80016098  4B FF FE 8C */	b lbl_80015F24
lbl_8001609C:
/* 8001609C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800160A0  40 82 00 24 */	bne lbl_800160C4
/* 800160A4  3C 60 80 37 */	lis r3, m_Do_m_Do_dvd_thread__stringBase0@ha
/* 800160A8  38 63 41 A8 */	addi r3, r3, m_Do_m_Do_dvd_thread__stringBase0@l
/* 800160AC  38 63 01 32 */	addi r3, r3, 0x132
/* 800160B0  4C C6 31 82 */	crclr 6
/* 800160B4  4B FF 0B 59 */	bl OSReport_Error
/* 800160B8  4B FF 8D 79 */	bl mDoExt_getJ2dHeap__Fv
/* 800160BC  7C 79 1B 78 */	mr r25, r3
/* 800160C0  4B FF FE 64 */	b lbl_80015F24
lbl_800160C4:
/* 800160C4  3C 60 80 37 */	lis r3, m_Do_m_Do_dvd_thread__stringBase0@ha
/* 800160C8  38 63 41 A8 */	addi r3, r3, m_Do_m_Do_dvd_thread__stringBase0@l
/* 800160CC  38 63 01 6F */	addi r3, r3, 0x16f
/* 800160D0  4C C6 31 82 */	crclr 6
/* 800160D4  4B FF 0A 69 */	bl OSReport_FatalError
lbl_800160D8:
/* 800160D8  38 00 00 01 */	li r0, 1
/* 800160DC  98 1A 00 0C */	stb r0, 0xc(r26)
/* 800160E0  80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 800160E4  30 03 FF FF */	addic r0, r3, -1
/* 800160E8  7C 00 19 10 */	subfe r0, r0, r3
/* 800160EC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800160F0  39 61 00 30 */	addi r11, r1, 0x30
/* 800160F4  48 34 C1 25 */	bl _restgpr_25
/* 800160F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800160FC  7C 08 03 A6 */	mtlr r0
/* 80016100  38 21 00 30 */	addi r1, r1, 0x30
/* 80016104  4E 80 00 20 */	blr 
