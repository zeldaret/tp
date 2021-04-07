lbl_80369B9C:
/* 80369B9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80369BA0  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 80369BA4  D8 21 00 08 */	stfd f1, 8(r1)
/* 80369BA8  81 41 00 10 */	lwz r10, 0x10(r1)
/* 80369BAC  80 C1 00 08 */	lwz r6, 8(r1)
/* 80369BB0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80369BB4  55 48 00 7E */	clrlwi r8, r10, 1
/* 80369BB8  54 C0 00 00 */	rlwinm r0, r6, 0, 0, 0
/* 80369BBC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80369BC0  7D 03 2B 79 */	or. r3, r8, r5
/* 80369BC4  7C C7 02 78 */	xor r7, r6, r0
/* 80369BC8  41 82 00 28 */	beq lbl_80369BF0
/* 80369BCC  3C C0 7F F0 */	lis r6, 0x7ff0
/* 80369BD0  7C 07 30 00 */	cmpw r7, r6
/* 80369BD4  40 80 00 1C */	bge lbl_80369BF0
/* 80369BD8  7C 65 00 D0 */	neg r3, r5
/* 80369BDC  7C A3 1B 78 */	or r3, r5, r3
/* 80369BE0  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80369BE4  7D 03 1B 78 */	or r3, r8, r3
/* 80369BE8  7C 03 30 40 */	cmplw r3, r6
/* 80369BEC  40 81 00 18 */	ble lbl_80369C04
lbl_80369BF0:
/* 80369BF0  C8 21 00 08 */	lfd f1, 8(r1)
/* 80369BF4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80369BF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80369BFC  FC 20 00 24 */	fdiv f1, f0, f0
/* 80369C00  48 00 02 D0 */	b lbl_80369ED0
lbl_80369C04:
/* 80369C04  7C 07 40 00 */	cmpw r7, r8
/* 80369C08  41 81 00 30 */	bgt lbl_80369C38
/* 80369C0C  41 80 00 0C */	blt lbl_80369C18
/* 80369C10  7C 04 28 40 */	cmplw r4, r5
/* 80369C14  40 80 00 0C */	bge lbl_80369C20
lbl_80369C18:
/* 80369C18  C8 21 00 08 */	lfd f1, 8(r1)
/* 80369C1C  48 00 02 B4 */	b lbl_80369ED0
lbl_80369C20:
/* 80369C20  40 82 00 18 */	bne lbl_80369C38
/* 80369C24  3C 60 80 3A */	lis r3, Zero@ha /* 0x803A2370@ha */
/* 80369C28  54 00 27 38 */	rlwinm r0, r0, 4, 0x1c, 0x1c
/* 80369C2C  38 63 23 70 */	addi r3, r3, Zero@l /* 0x803A2370@l */
/* 80369C30  7C 23 04 AE */	lfdx f1, r3, r0
/* 80369C34  48 00 02 9C */	b lbl_80369ED0
lbl_80369C38:
/* 80369C38  3C 60 00 10 */	lis r3, 0x10
/* 80369C3C  7C 07 18 00 */	cmpw r7, r3
/* 80369C40  40 80 00 4C */	bge lbl_80369C8C
/* 80369C44  2C 07 00 00 */	cmpwi r7, 0
/* 80369C48  40 82 00 24 */	bne lbl_80369C6C
/* 80369C4C  7C 83 23 78 */	mr r3, r4
/* 80369C50  39 60 FB ED */	li r11, -1043
/* 80369C54  48 00 00 0C */	b lbl_80369C60
lbl_80369C58:
/* 80369C58  54 63 08 3C */	slwi r3, r3, 1
/* 80369C5C  39 6B FF FF */	addi r11, r11, -1
lbl_80369C60:
/* 80369C60  2C 03 00 00 */	cmpwi r3, 0
/* 80369C64  41 81 FF F4 */	bgt lbl_80369C58
/* 80369C68  48 00 00 2C */	b lbl_80369C94
lbl_80369C6C:
/* 80369C6C  54 E3 58 28 */	slwi r3, r7, 0xb
/* 80369C70  39 60 FC 02 */	li r11, -1022
/* 80369C74  48 00 00 0C */	b lbl_80369C80
lbl_80369C78:
/* 80369C78  54 63 08 3C */	slwi r3, r3, 1
/* 80369C7C  39 6B FF FF */	addi r11, r11, -1
lbl_80369C80:
/* 80369C80  2C 03 00 00 */	cmpwi r3, 0
/* 80369C84  41 81 FF F4 */	bgt lbl_80369C78
/* 80369C88  48 00 00 0C */	b lbl_80369C94
lbl_80369C8C:
/* 80369C8C  7C E3 A6 70 */	srawi r3, r7, 0x14
/* 80369C90  39 63 FC 01 */	addi r11, r3, -1023
lbl_80369C94:
/* 80369C94  3C 60 00 10 */	lis r3, 0x10
/* 80369C98  7C 08 18 00 */	cmpw r8, r3
/* 80369C9C  40 80 00 4C */	bge lbl_80369CE8
/* 80369CA0  2C 08 00 00 */	cmpwi r8, 0
/* 80369CA4  40 82 00 24 */	bne lbl_80369CC8
/* 80369CA8  7C A6 2B 78 */	mr r6, r5
/* 80369CAC  38 60 FB ED */	li r3, -1043
/* 80369CB0  48 00 00 0C */	b lbl_80369CBC
lbl_80369CB4:
/* 80369CB4  54 C6 08 3C */	slwi r6, r6, 1
/* 80369CB8  38 63 FF FF */	addi r3, r3, -1
lbl_80369CBC:
/* 80369CBC  2C 06 00 00 */	cmpwi r6, 0
/* 80369CC0  41 81 FF F4 */	bgt lbl_80369CB4
/* 80369CC4  48 00 00 2C */	b lbl_80369CF0
lbl_80369CC8:
/* 80369CC8  55 06 58 28 */	slwi r6, r8, 0xb
/* 80369CCC  38 60 FC 02 */	li r3, -1022
/* 80369CD0  48 00 00 0C */	b lbl_80369CDC
lbl_80369CD4:
/* 80369CD4  54 C6 08 3C */	slwi r6, r6, 1
/* 80369CD8  38 63 FF FF */	addi r3, r3, -1
lbl_80369CDC:
/* 80369CDC  2C 06 00 00 */	cmpwi r6, 0
/* 80369CE0  41 81 FF F4 */	bgt lbl_80369CD4
/* 80369CE4  48 00 00 0C */	b lbl_80369CF0
lbl_80369CE8:
/* 80369CE8  7D 03 A6 70 */	srawi r3, r8, 0x14
/* 80369CEC  38 63 FC 01 */	addi r3, r3, -1023
lbl_80369CF0:
/* 80369CF0  2C 0B FC 02 */	cmpwi r11, -1022
/* 80369CF4  41 80 00 10 */	blt lbl_80369D04
/* 80369CF8  54 E6 03 3E */	clrlwi r6, r7, 0xc
/* 80369CFC  64 C9 00 10 */	oris r9, r6, 0x10
/* 80369D00  48 00 00 34 */	b lbl_80369D34
lbl_80369D04:
/* 80369D04  21 2B FC 02 */	subfic r9, r11, -1022
/* 80369D08  2C 09 00 1F */	cmpwi r9, 0x1f
/* 80369D0C  41 81 00 1C */	bgt lbl_80369D28
/* 80369D10  20 C9 00 20 */	subfic r6, r9, 0x20
/* 80369D14  7C E7 48 30 */	slw r7, r7, r9
/* 80369D18  7C 86 34 30 */	srw r6, r4, r6
/* 80369D1C  7C 84 48 30 */	slw r4, r4, r9
/* 80369D20  7C E9 33 78 */	or r9, r7, r6
/* 80369D24  48 00 00 10 */	b lbl_80369D34
lbl_80369D28:
/* 80369D28  38 C9 FF E0 */	addi r6, r9, -32
/* 80369D2C  7C 89 30 30 */	slw r9, r4, r6
/* 80369D30  38 80 00 00 */	li r4, 0
lbl_80369D34:
/* 80369D34  2C 03 FC 02 */	cmpwi r3, -1022
/* 80369D38  41 80 00 10 */	blt lbl_80369D48
/* 80369D3C  55 46 03 3E */	clrlwi r6, r10, 0xc
/* 80369D40  64 C7 00 10 */	oris r7, r6, 0x10
/* 80369D44  48 00 00 34 */	b lbl_80369D78
lbl_80369D48:
/* 80369D48  21 43 FC 02 */	subfic r10, r3, -1022
/* 80369D4C  2C 0A 00 1F */	cmpwi r10, 0x1f
/* 80369D50  41 81 00 1C */	bgt lbl_80369D6C
/* 80369D54  20 CA 00 20 */	subfic r6, r10, 0x20
/* 80369D58  7D 07 50 30 */	slw r7, r8, r10
/* 80369D5C  7C A6 34 30 */	srw r6, r5, r6
/* 80369D60  7C A5 50 30 */	slw r5, r5, r10
/* 80369D64  7C E7 33 78 */	or r7, r7, r6
/* 80369D68  48 00 00 10 */	b lbl_80369D78
lbl_80369D6C:
/* 80369D6C  38 CA FF E0 */	addi r6, r10, -32
/* 80369D70  7C A7 30 30 */	slw r7, r5, r6
/* 80369D74  38 A0 00 00 */	li r5, 0
lbl_80369D78:
/* 80369D78  7C C3 58 51 */	subf. r6, r3, r11
/* 80369D7C  7C C9 03 A6 */	mtctr r6
/* 80369D80  41 82 00 64 */	beq lbl_80369DE4
lbl_80369D84:
/* 80369D84  7C 04 28 40 */	cmplw r4, r5
/* 80369D88  7D 07 48 50 */	subf r8, r7, r9
/* 80369D8C  7D 45 20 50 */	subf r10, r5, r4
/* 80369D90  40 80 00 08 */	bge lbl_80369D98
/* 80369D94  39 08 FF FF */	addi r8, r8, -1
lbl_80369D98:
/* 80369D98  2C 08 00 00 */	cmpwi r8, 0
/* 80369D9C  40 80 00 18 */	bge lbl_80369DB4
/* 80369DA0  54 86 0F FE */	srwi r6, r4, 0x1f
/* 80369DA4  7C 84 22 14 */	add r4, r4, r4
/* 80369DA8  7C C9 32 14 */	add r6, r9, r6
/* 80369DAC  7D 29 32 14 */	add r9, r9, r6
/* 80369DB0  48 00 00 30 */	b lbl_80369DE0
lbl_80369DB4:
/* 80369DB4  7D 04 53 79 */	or. r4, r8, r10
/* 80369DB8  40 82 00 18 */	bne lbl_80369DD0
/* 80369DBC  3C 60 80 3A */	lis r3, Zero@ha /* 0x803A2370@ha */
/* 80369DC0  54 00 27 38 */	rlwinm r0, r0, 4, 0x1c, 0x1c
/* 80369DC4  38 63 23 70 */	addi r3, r3, Zero@l /* 0x803A2370@l */
/* 80369DC8  7C 23 04 AE */	lfdx f1, r3, r0
/* 80369DCC  48 00 01 04 */	b lbl_80369ED0
lbl_80369DD0:
/* 80369DD0  55 46 0F FE */	srwi r6, r10, 0x1f
/* 80369DD4  7C 8A 52 14 */	add r4, r10, r10
/* 80369DD8  7D 28 32 14 */	add r9, r8, r6
/* 80369DDC  7D 28 4A 14 */	add r9, r8, r9
lbl_80369DE0:
/* 80369DE0  42 00 FF A4 */	bdnz lbl_80369D84
lbl_80369DE4:
/* 80369DE4  7C 04 28 40 */	cmplw r4, r5
/* 80369DE8  7C C7 48 50 */	subf r6, r7, r9
/* 80369DEC  7C A5 20 50 */	subf r5, r5, r4
/* 80369DF0  40 80 00 08 */	bge lbl_80369DF8
/* 80369DF4  38 C6 FF FF */	addi r6, r6, -1
lbl_80369DF8:
/* 80369DF8  2C 06 00 00 */	cmpwi r6, 0
/* 80369DFC  41 80 00 0C */	blt lbl_80369E08
/* 80369E00  7C C9 33 78 */	mr r9, r6
/* 80369E04  7C A4 2B 78 */	mr r4, r5
lbl_80369E08:
/* 80369E08  7D 25 23 79 */	or. r5, r9, r4
/* 80369E0C  40 82 00 18 */	bne lbl_80369E24
/* 80369E10  3C 60 80 3A */	lis r3, Zero@ha /* 0x803A2370@ha */
/* 80369E14  54 00 27 38 */	rlwinm r0, r0, 4, 0x1c, 0x1c
/* 80369E18  38 63 23 70 */	addi r3, r3, Zero@l /* 0x803A2370@l */
/* 80369E1C  7C 23 04 AE */	lfdx f1, r3, r0
/* 80369E20  48 00 00 B0 */	b lbl_80369ED0
lbl_80369E24:
/* 80369E24  3C A0 00 10 */	lis r5, 0x10
/* 80369E28  48 00 00 18 */	b lbl_80369E40
lbl_80369E2C:
/* 80369E2C  54 86 0F FE */	srwi r6, r4, 0x1f
/* 80369E30  7C 84 22 14 */	add r4, r4, r4
/* 80369E34  7C C9 32 14 */	add r6, r9, r6
/* 80369E38  38 63 FF FF */	addi r3, r3, -1
/* 80369E3C  7D 29 32 14 */	add r9, r9, r6
lbl_80369E40:
/* 80369E40  7C 09 28 00 */	cmpw r9, r5
/* 80369E44  41 80 FF E8 */	blt lbl_80369E2C
/* 80369E48  2C 03 FC 02 */	cmpwi r3, -1022
/* 80369E4C  41 80 00 24 */	blt lbl_80369E70
/* 80369E50  38 63 03 FF */	addi r3, r3, 0x3ff
/* 80369E54  3C A9 FF F0 */	addis r5, r9, 0xfff0
/* 80369E58  54 63 A0 16 */	slwi r3, r3, 0x14
/* 80369E5C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80369E60  7C A3 1B 78 */	or r3, r5, r3
/* 80369E64  7C 60 03 78 */	or r0, r3, r0
/* 80369E68  90 01 00 08 */	stw r0, 8(r1)
/* 80369E6C  48 00 00 60 */	b lbl_80369ECC
lbl_80369E70:
/* 80369E70  20 C3 FC 02 */	subfic r6, r3, -1022
/* 80369E74  2C 06 00 14 */	cmpwi r6, 0x14
/* 80369E78  41 81 00 1C */	bgt lbl_80369E94
/* 80369E7C  20 66 00 20 */	subfic r3, r6, 0x20
/* 80369E80  7C 84 34 30 */	srw r4, r4, r6
/* 80369E84  7D 23 18 30 */	slw r3, r9, r3
/* 80369E88  7D 29 36 30 */	sraw r9, r9, r6
/* 80369E8C  7C 83 1B 78 */	or r3, r4, r3
/* 80369E90  48 00 00 30 */	b lbl_80369EC0
lbl_80369E94:
/* 80369E94  2C 06 00 1F */	cmpwi r6, 0x1f
/* 80369E98  41 81 00 1C */	bgt lbl_80369EB4
/* 80369E9C  20 A6 00 20 */	subfic r5, r6, 0x20
/* 80369EA0  7C 83 34 30 */	srw r3, r4, r6
/* 80369EA4  7D 24 28 30 */	slw r4, r9, r5
/* 80369EA8  7C 09 03 78 */	mr r9, r0
/* 80369EAC  7C 83 1B 78 */	or r3, r4, r3
/* 80369EB0  48 00 00 10 */	b lbl_80369EC0
lbl_80369EB4:
/* 80369EB4  38 66 FF E0 */	addi r3, r6, -32
/* 80369EB8  7D 23 1E 30 */	sraw r3, r9, r3
/* 80369EBC  7C 09 03 78 */	mr r9, r0
lbl_80369EC0:
/* 80369EC0  7D 20 03 78 */	or r0, r9, r0
/* 80369EC4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80369EC8  90 01 00 08 */	stw r0, 8(r1)
lbl_80369ECC:
/* 80369ECC  C8 21 00 08 */	lfd f1, 8(r1)
lbl_80369ED0:
/* 80369ED0  38 21 00 20 */	addi r1, r1, 0x20
/* 80369ED4  4E 80 00 20 */	blr 
