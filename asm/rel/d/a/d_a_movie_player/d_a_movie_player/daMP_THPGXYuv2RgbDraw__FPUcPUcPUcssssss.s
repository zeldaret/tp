lbl_80876BD0:
/* 80876BD0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80876BD4  7C 08 02 A6 */	mflr r0
/* 80876BD8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80876BDC  39 61 00 90 */	addi r11, r1, 0x90
/* 80876BE0  4B AE B5 E8 */	b _savegpr_24
/* 80876BE4  7C 60 1B 78 */	mr r0, r3
/* 80876BE8  7C 9B 23 78 */	mr r27, r4
/* 80876BEC  7C B8 2B 78 */	mr r24, r5
/* 80876BF0  7C DC 33 78 */	mr r28, r6
/* 80876BF4  7C FD 3B 78 */	mr r29, r7
/* 80876BF8  7D 1A 43 78 */	mr r26, r8
/* 80876BFC  7D 39 4B 78 */	mr r25, r9
/* 80876C00  7D 5E 53 78 */	mr r30, r10
/* 80876C04  AB E1 00 9A */	lha r31, 0x9a(r1)
/* 80876C08  38 61 00 48 */	addi r3, r1, 0x48
/* 80876C0C  7C 04 03 78 */	mr r4, r0
/* 80876C10  55 05 04 3E */	clrlwi r5, r8, 0x10
/* 80876C14  55 26 04 3E */	clrlwi r6, r9, 0x10
/* 80876C18  38 E0 00 01 */	li r7, 1
/* 80876C1C  39 00 00 00 */	li r8, 0
/* 80876C20  39 20 00 00 */	li r9, 0
/* 80876C24  39 40 00 00 */	li r10, 0
/* 80876C28  4B AE 72 18 */	b GXInitTexObj
/* 80876C2C  38 61 00 48 */	addi r3, r1, 0x48
/* 80876C30  38 80 00 00 */	li r4, 0
/* 80876C34  38 A0 00 00 */	li r5, 0
/* 80876C38  3C C0 80 88 */	lis r6, lit_4809@ha
/* 80876C3C  C0 26 90 FC */	lfs f1, lit_4809@l(r6)
/* 80876C40  FC 40 08 90 */	fmr f2, f1
/* 80876C44  FC 60 08 90 */	fmr f3, f1
/* 80876C48  38 C0 00 00 */	li r6, 0
/* 80876C4C  38 E0 00 00 */	li r7, 0
/* 80876C50  39 00 00 00 */	li r8, 0
/* 80876C54  4B AE 74 80 */	b GXInitTexObjLOD
/* 80876C58  38 61 00 48 */	addi r3, r1, 0x48
/* 80876C5C  38 80 00 00 */	li r4, 0
/* 80876C60  4B AE 77 B4 */	b GXLoadTexObj
/* 80876C64  38 61 00 28 */	addi r3, r1, 0x28
/* 80876C68  7F 64 DB 78 */	mr r4, r27
/* 80876C6C  7F 40 07 34 */	extsh r0, r26
/* 80876C70  7C 1A 0E 70 */	srawi r26, r0, 1
/* 80876C74  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 80876C78  7F 20 07 34 */	extsh r0, r25
/* 80876C7C  7C 1B 0E 70 */	srawi r27, r0, 1
/* 80876C80  57 66 04 3E */	clrlwi r6, r27, 0x10
/* 80876C84  38 E0 00 01 */	li r7, 1
/* 80876C88  39 00 00 00 */	li r8, 0
/* 80876C8C  39 20 00 00 */	li r9, 0
/* 80876C90  39 40 00 00 */	li r10, 0
/* 80876C94  4B AE 71 AC */	b GXInitTexObj
/* 80876C98  38 61 00 28 */	addi r3, r1, 0x28
/* 80876C9C  38 80 00 00 */	li r4, 0
/* 80876CA0  38 A0 00 00 */	li r5, 0
/* 80876CA4  3C C0 80 88 */	lis r6, lit_4809@ha
/* 80876CA8  C0 26 90 FC */	lfs f1, lit_4809@l(r6)
/* 80876CAC  FC 40 08 90 */	fmr f2, f1
/* 80876CB0  FC 60 08 90 */	fmr f3, f1
/* 80876CB4  38 C0 00 00 */	li r6, 0
/* 80876CB8  38 E0 00 00 */	li r7, 0
/* 80876CBC  39 00 00 00 */	li r8, 0
/* 80876CC0  4B AE 74 14 */	b GXInitTexObjLOD
/* 80876CC4  38 61 00 28 */	addi r3, r1, 0x28
/* 80876CC8  38 80 00 01 */	li r4, 1
/* 80876CCC  4B AE 77 48 */	b GXLoadTexObj
/* 80876CD0  38 61 00 08 */	addi r3, r1, 8
/* 80876CD4  7F 04 C3 78 */	mr r4, r24
/* 80876CD8  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 80876CDC  57 66 04 3E */	clrlwi r6, r27, 0x10
/* 80876CE0  38 E0 00 01 */	li r7, 1
/* 80876CE4  39 00 00 00 */	li r8, 0
/* 80876CE8  39 20 00 00 */	li r9, 0
/* 80876CEC  39 40 00 00 */	li r10, 0
/* 80876CF0  4B AE 71 50 */	b GXInitTexObj
/* 80876CF4  38 61 00 08 */	addi r3, r1, 8
/* 80876CF8  38 80 00 00 */	li r4, 0
/* 80876CFC  38 A0 00 00 */	li r5, 0
/* 80876D00  3C C0 80 88 */	lis r6, lit_4809@ha
/* 80876D04  C0 26 90 FC */	lfs f1, lit_4809@l(r6)
/* 80876D08  FC 40 08 90 */	fmr f2, f1
/* 80876D0C  FC 60 08 90 */	fmr f3, f1
/* 80876D10  38 C0 00 00 */	li r6, 0
/* 80876D14  38 E0 00 00 */	li r7, 0
/* 80876D18  39 00 00 00 */	li r8, 0
/* 80876D1C  4B AE 73 B8 */	b GXInitTexObjLOD
/* 80876D20  38 61 00 08 */	addi r3, r1, 8
/* 80876D24  38 80 00 02 */	li r4, 2
/* 80876D28  4B AE 76 EC */	b GXLoadTexObj
/* 80876D2C  38 60 00 80 */	li r3, 0x80
/* 80876D30  38 80 00 07 */	li r4, 7
/* 80876D34  38 A0 00 04 */	li r5, 4
/* 80876D38  4B AE 5A 2C */	b GXBegin
/* 80876D3C  7F 99 07 34 */	extsh r25, r28
/* 80876D40  7F 23 CB 78 */	mr r3, r25
/* 80876D44  7F BA 07 34 */	extsh r26, r29
/* 80876D48  7F 44 D3 78 */	mr r4, r26
/* 80876D4C  38 A0 00 00 */	li r5, 0
/* 80876D50  48 00 00 A9 */	bl GXPosition3s16
/* 80876D54  38 60 00 00 */	li r3, 0
/* 80876D58  38 80 00 00 */	li r4, 0
/* 80876D5C  48 00 00 8D */	bl GXTexCoord2u16
/* 80876D60  7F 23 CB 78 */	mr r3, r25
/* 80876D64  7F C0 07 34 */	extsh r0, r30
/* 80876D68  7F 63 02 14 */	add r27, r3, r0
/* 80876D6C  7F 63 07 34 */	extsh r3, r27
/* 80876D70  7F 44 D3 78 */	mr r4, r26
/* 80876D74  38 A0 00 00 */	li r5, 0
/* 80876D78  48 00 00 81 */	bl GXPosition3s16
/* 80876D7C  38 60 00 01 */	li r3, 1
/* 80876D80  38 80 00 00 */	li r4, 0
/* 80876D84  48 00 00 65 */	bl GXTexCoord2u16
/* 80876D88  7F 63 07 34 */	extsh r3, r27
/* 80876D8C  7F 40 D3 78 */	mr r0, r26
/* 80876D90  7F 40 FA 14 */	add r26, r0, r31
/* 80876D94  7F 44 07 34 */	extsh r4, r26
/* 80876D98  38 A0 00 00 */	li r5, 0
/* 80876D9C  48 00 00 5D */	bl GXPosition3s16
/* 80876DA0  38 60 00 01 */	li r3, 1
/* 80876DA4  38 80 00 01 */	li r4, 1
/* 80876DA8  48 00 00 41 */	bl GXTexCoord2u16
/* 80876DAC  7F 23 CB 78 */	mr r3, r25
/* 80876DB0  7F 44 07 34 */	extsh r4, r26
/* 80876DB4  38 A0 00 00 */	li r5, 0
/* 80876DB8  48 00 00 41 */	bl GXPosition3s16
/* 80876DBC  38 60 00 00 */	li r3, 0
/* 80876DC0  38 80 00 01 */	li r4, 1
/* 80876DC4  48 00 00 25 */	bl GXTexCoord2u16
/* 80876DC8  48 00 00 1D */	bl GXEnd
/* 80876DCC  39 61 00 90 */	addi r11, r1, 0x90
/* 80876DD0  4B AE B4 44 */	b _restgpr_24
/* 80876DD4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80876DD8  7C 08 03 A6 */	mtlr r0
/* 80876DDC  38 21 00 90 */	addi r1, r1, 0x90
/* 80876DE0  4E 80 00 20 */	blr 
