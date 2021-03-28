lbl_803679E4:
/* 803679E4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803679E8  7C 08 02 A6 */	mflr r0
/* 803679EC  90 01 00 84 */	stw r0, 0x84(r1)
/* 803679F0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803679F4  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 803679F8  7C 9F 23 78 */	mr r31, r4
/* 803679FC  2C 00 01 FD */	cmpwi r0, 0x1fd
/* 80367A00  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80367A04  7C 7E 1B 78 */	mr r30, r3
/* 80367A08  D8 21 00 08 */	stfd f1, 8(r1)
/* 80367A0C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 80367A10  40 81 00 0C */	ble lbl_80367A1C
/* 80367A14  38 60 00 00 */	li r3, 0
/* 80367A18  48 00 02 EC */	b lbl_80367D04
lbl_80367A1C:
/* 80367A1C  38 60 00 00 */	li r3, 0
/* 80367A20  38 00 00 20 */	li r0, 0x20
/* 80367A24  98 61 00 10 */	stb r3, 0x10(r1)
/* 80367A28  38 61 00 10 */	addi r3, r1, 0x10
/* 80367A2C  38 81 00 40 */	addi r4, r1, 0x40
/* 80367A30  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80367A34  4B FF B6 F1 */	bl __num2dec
/* 80367A38  88 01 00 45 */	lbz r0, 0x45(r1)
/* 80367A3C  28 00 00 49 */	cmplwi r0, 0x49
/* 80367A40  40 82 00 94 */	bne lbl_80367AD4
/* 80367A44  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80367A48  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80367A4C  41 82 00 44 */	beq lbl_80367A90
/* 80367A50  88 1F 00 05 */	lbz r0, 5(r31)
/* 80367A54  3B DE FF FB */	addi r30, r30, -5
/* 80367A58  28 00 00 41 */	cmplwi r0, 0x41
/* 80367A5C  40 82 00 1C */	bne lbl_80367A78
/* 80367A60  3C 80 80 3A */	lis r4, MSL_Common_Src_printf__stringBase0@ha
/* 80367A64  7F C3 F3 78 */	mr r3, r30
/* 80367A68  38 84 23 18 */	addi r4, r4, MSL_Common_Src_printf__stringBase0@l
/* 80367A6C  38 84 00 01 */	addi r4, r4, 1
/* 80367A70  48 00 10 BD */	bl strcpy
/* 80367A74  48 00 00 58 */	b lbl_80367ACC
lbl_80367A78:
/* 80367A78  3C 80 80 3A */	lis r4, MSL_Common_Src_printf__stringBase0@ha
/* 80367A7C  7F C3 F3 78 */	mr r3, r30
/* 80367A80  38 84 23 18 */	addi r4, r4, MSL_Common_Src_printf__stringBase0@l
/* 80367A84  38 84 00 06 */	addi r4, r4, 6
/* 80367A88  48 00 10 A5 */	bl strcpy
/* 80367A8C  48 00 00 40 */	b lbl_80367ACC
lbl_80367A90:
/* 80367A90  88 1F 00 05 */	lbz r0, 5(r31)
/* 80367A94  3B DE FF FC */	addi r30, r30, -4
/* 80367A98  28 00 00 41 */	cmplwi r0, 0x41
/* 80367A9C  40 82 00 1C */	bne lbl_80367AB8
/* 80367AA0  3C 80 80 3A */	lis r4, MSL_Common_Src_printf__stringBase0@ha
/* 80367AA4  7F C3 F3 78 */	mr r3, r30
/* 80367AA8  38 84 23 18 */	addi r4, r4, MSL_Common_Src_printf__stringBase0@l
/* 80367AAC  38 84 00 0B */	addi r4, r4, 0xb
/* 80367AB0  48 00 10 7D */	bl strcpy
/* 80367AB4  48 00 00 18 */	b lbl_80367ACC
lbl_80367AB8:
/* 80367AB8  3C 80 80 3A */	lis r4, MSL_Common_Src_printf__stringBase0@ha
/* 80367ABC  7F C3 F3 78 */	mr r3, r30
/* 80367AC0  38 84 23 18 */	addi r4, r4, MSL_Common_Src_printf__stringBase0@l
/* 80367AC4  38 84 00 0F */	addi r4, r4, 0xf
/* 80367AC8  48 00 10 65 */	bl strcpy
lbl_80367ACC:
/* 80367ACC  7F C3 F3 78 */	mr r3, r30
/* 80367AD0  48 00 02 34 */	b lbl_80367D04
lbl_80367AD4:
/* 80367AD4  28 00 00 4E */	cmplwi r0, 0x4e
/* 80367AD8  40 82 00 94 */	bne lbl_80367B6C
/* 80367ADC  88 01 00 08 */	lbz r0, 8(r1)
/* 80367AE0  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80367AE4  41 82 00 44 */	beq lbl_80367B28
/* 80367AE8  88 1F 00 05 */	lbz r0, 5(r31)
/* 80367AEC  3B DE FF FB */	addi r30, r30, -5
/* 80367AF0  28 00 00 41 */	cmplwi r0, 0x41
/* 80367AF4  40 82 00 1C */	bne lbl_80367B10
/* 80367AF8  3C 80 80 3A */	lis r4, MSL_Common_Src_printf__stringBase0@ha
/* 80367AFC  7F C3 F3 78 */	mr r3, r30
/* 80367B00  38 84 23 18 */	addi r4, r4, MSL_Common_Src_printf__stringBase0@l
/* 80367B04  38 84 00 13 */	addi r4, r4, 0x13
/* 80367B08  48 00 10 25 */	bl strcpy
/* 80367B0C  48 00 00 58 */	b lbl_80367B64
lbl_80367B10:
/* 80367B10  3C 80 80 3A */	lis r4, MSL_Common_Src_printf__stringBase0@ha
/* 80367B14  7F C3 F3 78 */	mr r3, r30
/* 80367B18  38 84 23 18 */	addi r4, r4, MSL_Common_Src_printf__stringBase0@l
/* 80367B1C  38 84 00 18 */	addi r4, r4, 0x18
/* 80367B20  48 00 10 0D */	bl strcpy
/* 80367B24  48 00 00 40 */	b lbl_80367B64
lbl_80367B28:
/* 80367B28  88 1F 00 05 */	lbz r0, 5(r31)
/* 80367B2C  3B DE FF FC */	addi r30, r30, -4
/* 80367B30  28 00 00 41 */	cmplwi r0, 0x41
/* 80367B34  40 82 00 1C */	bne lbl_80367B50
/* 80367B38  3C 80 80 3A */	lis r4, MSL_Common_Src_printf__stringBase0@ha
/* 80367B3C  7F C3 F3 78 */	mr r3, r30
/* 80367B40  38 84 23 18 */	addi r4, r4, MSL_Common_Src_printf__stringBase0@l
/* 80367B44  38 84 00 1D */	addi r4, r4, 0x1d
/* 80367B48  48 00 0F E5 */	bl strcpy
/* 80367B4C  48 00 00 18 */	b lbl_80367B64
lbl_80367B50:
/* 80367B50  3C 80 80 3A */	lis r4, MSL_Common_Src_printf__stringBase0@ha
/* 80367B54  7F C3 F3 78 */	mr r3, r30
/* 80367B58  38 84 23 18 */	addi r4, r4, MSL_Common_Src_printf__stringBase0@l
/* 80367B5C  38 84 00 21 */	addi r4, r4, 0x21
/* 80367B60  48 00 0F CD */	bl strcpy
lbl_80367B64:
/* 80367B64  7F C3 F3 78 */	mr r3, r30
/* 80367B68  48 00 01 9C */	b lbl_80367D04
lbl_80367B6C:
/* 80367B6C  39 00 00 00 */	li r8, 0
/* 80367B70  39 20 00 01 */	li r9, 1
/* 80367B74  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80367B78  38 E0 00 64 */	li r7, 0x64
/* 80367B7C  99 21 00 30 */	stb r9, 0x30(r1)
/* 80367B80  7F C4 F3 78 */	mr r4, r30
/* 80367B84  54 00 E5 7E */	rlwinm r0, r0, 0x1c, 0x15, 0x1f
/* 80367B88  38 A1 00 20 */	addi r5, r1, 0x20
/* 80367B8C  7C 03 07 34 */	extsh r3, r0
/* 80367B90  99 21 00 31 */	stb r9, 0x31(r1)
/* 80367B94  38 63 FC 01 */	addi r3, r3, -1023
/* 80367B98  99 01 00 32 */	stb r8, 0x32(r1)
/* 80367B9C  99 01 00 33 */	stb r8, 0x33(r1)
/* 80367BA0  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 80367BA4  99 01 00 34 */	stb r8, 0x34(r1)
/* 80367BA8  98 E1 00 35 */	stb r7, 0x35(r1)
/* 80367BAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80367BB0  91 01 00 38 */	stw r8, 0x38(r1)
/* 80367BB4  91 21 00 3C */	stw r9, 0x3c(r1)
/* 80367BB8  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80367BBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80367BC0  91 01 00 28 */	stw r8, 0x28(r1)
/* 80367BC4  91 21 00 2C */	stw r9, 0x2c(r1)
/* 80367BC8  48 00 04 69 */	bl long2str
/* 80367BCC  88 1F 00 05 */	lbz r0, 5(r31)
/* 80367BD0  28 00 00 61 */	cmplwi r0, 0x61
/* 80367BD4  40 82 00 14 */	bne lbl_80367BE8
/* 80367BD8  38 00 00 70 */	li r0, 0x70
/* 80367BDC  38 83 FF FF */	addi r4, r3, -1
/* 80367BE0  98 03 FF FF */	stb r0, -1(r3)
/* 80367BE4  48 00 00 10 */	b lbl_80367BF4
lbl_80367BE8:
/* 80367BE8  38 00 00 50 */	li r0, 0x50
/* 80367BEC  38 83 FF FF */	addi r4, r3, -1
/* 80367BF0  98 03 FF FF */	stb r0, -1(r3)
lbl_80367BF4:
/* 80367BF4  81 1F 00 0C */	lwz r8, 0xc(r31)
/* 80367BF8  38 C1 00 08 */	addi r6, r1, 8
/* 80367BFC  7D 09 03 A6 */	mtctr r8
/* 80367C00  2C 08 00 01 */	cmpwi r8, 1
/* 80367C04  41 80 00 6C */	blt lbl_80367C70
lbl_80367C08:
/* 80367C08  55 05 0F FE */	srwi r5, r8, 0x1f
/* 80367C0C  55 00 07 FE */	clrlwi r0, r8, 0x1f
/* 80367C10  7C 65 42 14 */	add r3, r5, r8
/* 80367C14  7C 63 0E 70 */	srawi r3, r3, 1
/* 80367C18  7C 00 2A 78 */	xor r0, r0, r5
/* 80367C1C  38 63 00 01 */	addi r3, r3, 1
/* 80367C20  7C E6 18 AE */	lbzx r7, r6, r3
/* 80367C24  7C 05 00 51 */	subf. r0, r5, r0
/* 80367C28  54 E0 E7 3E */	rlwinm r0, r7, 0x1c, 0x1c, 0x1f
/* 80367C2C  7C 03 07 74 */	extsb r3, r0
/* 80367C30  41 82 00 08 */	beq lbl_80367C38
/* 80367C34  54 E3 07 3E */	clrlwi r3, r7, 0x1c
lbl_80367C38:
/* 80367C38  7C 60 07 74 */	extsb r0, r3
/* 80367C3C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80367C40  40 80 00 0C */	bge lbl_80367C4C
/* 80367C44  38 03 00 30 */	addi r0, r3, 0x30
/* 80367C48  48 00 00 1C */	b lbl_80367C64
lbl_80367C4C:
/* 80367C4C  88 1F 00 05 */	lbz r0, 5(r31)
/* 80367C50  28 00 00 61 */	cmplwi r0, 0x61
/* 80367C54  40 82 00 0C */	bne lbl_80367C60
/* 80367C58  38 03 00 57 */	addi r0, r3, 0x57
/* 80367C5C  48 00 00 08 */	b lbl_80367C64
lbl_80367C60:
/* 80367C60  38 03 00 37 */	addi r0, r3, 0x37
lbl_80367C64:
/* 80367C64  9C 04 FF FF */	stbu r0, -1(r4)
/* 80367C68  39 08 FF FF */	addi r8, r8, -1
/* 80367C6C  42 00 FF 9C */	bdnz lbl_80367C08
lbl_80367C70:
/* 80367C70  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80367C74  2C 00 00 00 */	cmpwi r0, 0
/* 80367C78  40 82 00 10 */	bne lbl_80367C88
/* 80367C7C  88 1F 00 03 */	lbz r0, 3(r31)
/* 80367C80  28 00 00 00 */	cmplwi r0, 0
/* 80367C84  41 82 00 0C */	beq lbl_80367C90
lbl_80367C88:
/* 80367C88  38 00 00 2E */	li r0, 0x2e
/* 80367C8C  9C 04 FF FF */	stbu r0, -1(r4)
lbl_80367C90:
/* 80367C90  88 1F 00 05 */	lbz r0, 5(r31)
/* 80367C94  38 60 00 31 */	li r3, 0x31
/* 80367C98  98 64 FF FF */	stb r3, -1(r4)
/* 80367C9C  28 00 00 61 */	cmplwi r0, 0x61
/* 80367CA0  40 82 00 10 */	bne lbl_80367CB0
/* 80367CA4  38 00 00 78 */	li r0, 0x78
/* 80367CA8  9C 04 FF FE */	stbu r0, -2(r4)
/* 80367CAC  48 00 00 0C */	b lbl_80367CB8
lbl_80367CB0:
/* 80367CB0  38 00 00 58 */	li r0, 0x58
/* 80367CB4  9C 04 FF FE */	stbu r0, -2(r4)
lbl_80367CB8:
/* 80367CB8  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80367CBC  38 60 00 30 */	li r3, 0x30
/* 80367CC0  9C 64 FF FF */	stbu r3, -1(r4)
/* 80367CC4  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80367CC8  41 82 00 10 */	beq lbl_80367CD8
/* 80367CCC  38 00 00 2D */	li r0, 0x2d
/* 80367CD0  9C 04 FF FF */	stbu r0, -1(r4)
/* 80367CD4  48 00 00 2C */	b lbl_80367D00
lbl_80367CD8:
/* 80367CD8  88 1F 00 01 */	lbz r0, 1(r31)
/* 80367CDC  28 00 00 01 */	cmplwi r0, 1
/* 80367CE0  40 82 00 10 */	bne lbl_80367CF0
/* 80367CE4  38 00 00 2B */	li r0, 0x2b
/* 80367CE8  9C 04 FF FF */	stbu r0, -1(r4)
/* 80367CEC  48 00 00 14 */	b lbl_80367D00
lbl_80367CF0:
/* 80367CF0  28 00 00 02 */	cmplwi r0, 2
/* 80367CF4  40 82 00 0C */	bne lbl_80367D00
/* 80367CF8  38 00 00 20 */	li r0, 0x20
/* 80367CFC  9C 04 FF FF */	stbu r0, -1(r4)
lbl_80367D00:
/* 80367D00  7C 83 23 78 */	mr r3, r4
lbl_80367D04:
/* 80367D04  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80367D08  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80367D0C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80367D10  7C 08 03 A6 */	mtlr r0
/* 80367D14  38 21 00 80 */	addi r1, r1, 0x80
/* 80367D18  4E 80 00 20 */	blr 
