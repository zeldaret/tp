lbl_807C5CF0:
/* 807C5CF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C5CF4  7C 08 02 A6 */	mflr r0
/* 807C5CF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C5CFC  39 61 00 30 */	addi r11, r1, 0x30
/* 807C5D00  4B B9 C4 C9 */	bl _savegpr_24
/* 807C5D04  7C 7B 1B 78 */	mr r27, r3
/* 807C5D08  7C BC 2B 78 */	mr r28, r5
/* 807C5D0C  7C DD 33 78 */	mr r29, r6
/* 807C5D10  1F E4 00 0A */	mulli r31, r4, 0xa
/* 807C5D14  3B C0 00 00 */	li r30, 0
lbl_807C5D18:
/* 807C5D18  7F 1F F2 14 */	add r24, r31, r30
/* 807C5D1C  2C 1D 00 00 */	cmpwi r29, 0
/* 807C5D20  40 82 00 14 */	bne lbl_807C5D34
/* 807C5D24  38 78 10 9C */	addi r3, r24, 0x109c
/* 807C5D28  7C 1B 18 AE */	lbzx r0, r27, r3
/* 807C5D2C  60 00 00 10 */	ori r0, r0, 0x10
/* 807C5D30  7C 1B 19 AE */	stbx r0, r27, r3
lbl_807C5D34:
/* 807C5D34  7C 1E E0 00 */	cmpw r30, r28
/* 807C5D38  40 80 00 6C */	bge lbl_807C5DA4
/* 807C5D3C  38 78 10 9C */	addi r3, r24, 0x109c
/* 807C5D40  7C 1B 18 AE */	lbzx r0, r27, r3
/* 807C5D44  60 00 00 02 */	ori r0, r0, 2
/* 807C5D48  7C 1B 19 AE */	stbx r0, r27, r3
/* 807C5D4C  2C 1D 00 00 */	cmpwi r29, 0
/* 807C5D50  40 82 00 80 */	bne lbl_807C5DD0
/* 807C5D54  38 18 FF FF */	addi r0, r24, -1
/* 807C5D58  1C 60 00 0C */	mulli r3, r0, 0xc
/* 807C5D5C  3B 23 09 94 */	addi r25, r3, 0x994
/* 807C5D60  7F 3B CA 14 */	add r25, r27, r25
/* 807C5D64  7F 23 CB 78 */	mr r3, r25
/* 807C5D68  1C 98 00 0C */	mulli r4, r24, 0xc
/* 807C5D6C  3B 44 09 94 */	addi r26, r4, 0x994
/* 807C5D70  7F 5B D2 14 */	add r26, r27, r26
/* 807C5D74  7F 44 D3 78 */	mr r4, r26
/* 807C5D78  4B AA AE FD */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 807C5D7C  1C 18 00 06 */	mulli r0, r24, 6
/* 807C5D80  7F 1B 02 14 */	add r24, r27, r0
/* 807C5D84  B0 78 0E 44 */	sth r3, 0xe44(r24)
/* 807C5D88  7F 23 CB 78 */	mr r3, r25
/* 807C5D8C  7F 44 D3 78 */	mr r4, r26
/* 807C5D90  4B AA AE 75 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807C5D94  B0 78 0E 46 */	sth r3, 0xe46(r24)
/* 807C5D98  38 00 00 00 */	li r0, 0
/* 807C5D9C  B0 18 0E 48 */	sth r0, 0xe48(r24)
/* 807C5DA0  48 00 00 30 */	b lbl_807C5DD0
lbl_807C5DA4:
/* 807C5DA4  2C 1D 00 00 */	cmpwi r29, 0
/* 807C5DA8  40 82 00 18 */	bne lbl_807C5DC0
/* 807C5DAC  38 78 10 9C */	addi r3, r24, 0x109c
/* 807C5DB0  7C 1B 18 AE */	lbzx r0, r27, r3
/* 807C5DB4  60 00 00 04 */	ori r0, r0, 4
/* 807C5DB8  7C 1B 19 AE */	stbx r0, r27, r3
/* 807C5DBC  48 00 00 14 */	b lbl_807C5DD0
lbl_807C5DC0:
/* 807C5DC0  38 78 10 9C */	addi r3, r24, 0x109c
/* 807C5DC4  7C 1B 18 AE */	lbzx r0, r27, r3
/* 807C5DC8  60 00 00 08 */	ori r0, r0, 8
/* 807C5DCC  7C 1B 19 AE */	stbx r0, r27, r3
lbl_807C5DD0:
/* 807C5DD0  3B DE 00 01 */	addi r30, r30, 1
/* 807C5DD4  2C 1E 00 0A */	cmpwi r30, 0xa
/* 807C5DD8  41 80 FF 40 */	blt lbl_807C5D18
/* 807C5DDC  39 61 00 30 */	addi r11, r1, 0x30
/* 807C5DE0  4B B9 C4 35 */	bl _restgpr_24
/* 807C5DE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807C5DE8  7C 08 03 A6 */	mtlr r0
/* 807C5DEC  38 21 00 30 */	addi r1, r1, 0x30
/* 807C5DF0  4E 80 00 20 */	blr 
