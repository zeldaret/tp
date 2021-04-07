lbl_80B972EC:
/* 80B972EC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B972F0  7C 08 02 A6 */	mflr r0
/* 80B972F4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B972F8  39 61 00 70 */	addi r11, r1, 0x70
/* 80B972FC  4B 7C AE D5 */	bl _savegpr_26
/* 80B97300  7C 7D 1B 78 */	mr r29, r3
/* 80B97304  80 C3 14 8C */	lwz r6, 0x148c(r3)
/* 80B97308  2C 06 00 DC */	cmpwi r6, 0xdc
/* 80B9730C  40 80 01 98 */	bge lbl_80B974A4
/* 80B97310  39 40 00 00 */	li r10, 0
/* 80B97314  38 80 00 00 */	li r4, 0
/* 80B97318  3C 60 80 BA */	lis r3, key_frame@ha /* 0x80B9B188@ha */
/* 80B9731C  38 A3 B1 88 */	addi r5, r3, key_frame@l /* 0x80B9B188@l */
/* 80B97320  38 60 00 04 */	li r3, 4
/* 80B97324  7C 69 03 A6 */	mtctr r3
lbl_80B97328:
/* 80B97328  7C 65 22 14 */	add r3, r5, r4
/* 80B9732C  80 E3 00 00 */	lwz r7, 0(r3)
/* 80B97330  7C 07 30 00 */	cmpw r7, r6
/* 80B97334  41 81 00 2C */	bgt lbl_80B97360
/* 80B97338  80 63 00 04 */	lwz r3, 4(r3)
/* 80B9733C  7C 03 30 00 */	cmpw r3, r6
/* 80B97340  40 81 00 20 */	ble lbl_80B97360
/* 80B97344  7C E8 3B 78 */	mr r8, r7
/* 80B97348  3C 60 80 BA */	lis r3, key_frame@ha /* 0x80B9B188@ha */
/* 80B9734C  38 03 B1 88 */	addi r0, r3, key_frame@l /* 0x80B9B188@l */
/* 80B97350  7C 60 22 14 */	add r3, r0, r4
/* 80B97354  81 23 00 04 */	lwz r9, 4(r3)
/* 80B97358  38 0A 00 01 */	addi r0, r10, 1
/* 80B9735C  48 00 00 10 */	b lbl_80B9736C
lbl_80B97360:
/* 80B97360  39 4A 00 01 */	addi r10, r10, 1
/* 80B97364  38 84 00 04 */	addi r4, r4, 4
/* 80B97368  42 00 FF C0 */	bdnz lbl_80B97328
lbl_80B9736C:
/* 80B9736C  7C A8 48 50 */	subf r5, r8, r9
/* 80B97370  55 4A 18 38 */	slwi r10, r10, 3
/* 80B97374  3C 60 80 BA */	lis r3, key_color@ha /* 0x80B9B198@ha */
/* 80B97378  39 03 B1 98 */	addi r8, r3, key_color@l /* 0x80B9B198@l */
/* 80B9737C  7C 88 52 AE */	lhax r4, r8, r10
/* 80B97380  7C E8 52 14 */	add r7, r8, r10
/* 80B97384  A8 67 00 08 */	lha r3, 8(r7)
/* 80B97388  7C 84 18 50 */	subf r4, r4, r3
/* 80B9738C  3C 60 80 BA */	lis r3, lit_4677@ha /* 0x80B9B08C@ha */
/* 80B97390  C8 23 B0 8C */	lfd f1, lit_4677@l(r3)  /* 0x80B9B08C@l */
/* 80B97394  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 80B97398  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B9739C  3C C0 43 30 */	lis r6, 0x4330
/* 80B973A0  90 C1 00 08 */	stw r6, 8(r1)
/* 80B973A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80B973A8  FC 00 08 28 */	fsub f0, f0, f1
/* 80B973AC  FC 40 02 10 */	fabs f2, f0
/* 80B973B0  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80B973B4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80B973B8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80B973BC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80B973C0  FC 00 08 28 */	fsub f0, f0, f1
/* 80B973C4  FC 02 00 24 */	fdiv f0, f2, f0
/* 80B973C8  FC 00 00 1E */	fctiwz f0, f0
/* 80B973CC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B973D0  81 21 00 1C */	lwz r9, 0x1c(r1)
/* 80B973D4  3B E8 00 02 */	addi r31, r8, 2
/* 80B973D8  7C 9F 52 AE */	lhax r4, r31, r10
/* 80B973DC  A8 67 00 0A */	lha r3, 0xa(r7)
/* 80B973E0  7C 64 18 50 */	subf r3, r4, r3
/* 80B973E4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80B973E8  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B973EC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80B973F0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B973F4  FC 00 08 28 */	fsub f0, f0, f1
/* 80B973F8  FC 40 02 10 */	fabs f2, f0
/* 80B973FC  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80B97400  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80B97404  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B97408  FC 00 08 28 */	fsub f0, f0, f1
/* 80B9740C  FC 02 00 24 */	fdiv f0, f2, f0
/* 80B97410  FC 00 00 1E */	fctiwz f0, f0
/* 80B97414  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B97418  83 81 00 34 */	lwz r28, 0x34(r1)
/* 80B9741C  3B C8 00 04 */	addi r30, r8, 4
/* 80B97420  7C 9E 52 AE */	lhax r4, r30, r10
/* 80B97424  A8 67 00 0C */	lha r3, 0xc(r7)
/* 80B97428  7C 64 18 50 */	subf r3, r4, r3
/* 80B9742C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80B97430  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80B97434  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80B97438  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B9743C  FC 00 08 28 */	fsub f0, f0, f1
/* 80B97440  FC 40 02 10 */	fabs f2, f0
/* 80B97444  90 A1 00 44 */	stw r5, 0x44(r1)
/* 80B97448  90 C1 00 40 */	stw r6, 0x40(r1)
/* 80B9744C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80B97450  FC 00 08 28 */	fsub f0, f0, f1
/* 80B97454  FC 02 00 24 */	fdiv f0, f2, f0
/* 80B97458  FC 00 00 1E */	fctiwz f0, f0
/* 80B9745C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80B97460  83 61 00 4C */	lwz r27, 0x4c(r1)
/* 80B97464  38 7D 14 74 */	addi r3, r29, 0x1474
/* 80B97468  54 1A 18 38 */	slwi r26, r0, 3
/* 80B9746C  7C 88 D2 AE */	lhax r4, r8, r26
/* 80B97470  38 09 00 01 */	addi r0, r9, 1
/* 80B97474  7C 05 07 34 */	extsh r5, r0
/* 80B97478  4B 6D 92 59 */	bl cLib_chaseS__FPsss
/* 80B9747C  38 7D 14 76 */	addi r3, r29, 0x1476
/* 80B97480  7C 9F D2 AE */	lhax r4, r31, r26
/* 80B97484  38 1C 00 01 */	addi r0, r28, 1
/* 80B97488  7C 05 07 34 */	extsh r5, r0
/* 80B9748C  4B 6D 92 45 */	bl cLib_chaseS__FPsss
/* 80B97490  38 7D 14 78 */	addi r3, r29, 0x1478
/* 80B97494  7C 9E D2 AE */	lhax r4, r30, r26
/* 80B97498  38 1B 00 01 */	addi r0, r27, 1
/* 80B9749C  7C 05 07 34 */	extsh r5, r0
/* 80B974A0  4B 6D 92 31 */	bl cLib_chaseS__FPsss
lbl_80B974A4:
/* 80B974A4  39 61 00 70 */	addi r11, r1, 0x70
/* 80B974A8  4B 7C AD 75 */	bl _restgpr_26
/* 80B974AC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B974B0  7C 08 03 A6 */	mtlr r0
/* 80B974B4  38 21 00 70 */	addi r1, r1, 0x70
/* 80B974B8  4E 80 00 20 */	blr 
