lbl_80345CF8:
/* 80345CF8  7C 08 02 A6 */	mflr r0
/* 80345CFC  90 01 00 04 */	stw r0, 4(r1)
/* 80345D00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80345D04  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80345D08  3B 63 00 00 */	addi r27, r3, 0
/* 80345D0C  3C 60 80 3D */	lis r3, Type@ha /* 0x803D1210@ha */
/* 80345D10  38 03 12 10 */	addi r0, r3, Type@l /* 0x803D1210@l */
/* 80345D14  57 7D 10 3A */	slwi r29, r27, 2
/* 80345D18  7F C0 EA 14 */	add r30, r0, r29
/* 80345D1C  3C 60 80 45 */	lis r3, Packet@ha /* 0x8044C630@ha */
/* 80345D20  3B 44 00 00 */	addi r26, r4, 0
/* 80345D24  3B E3 C6 30 */	addi r31, r3, Packet@l /* 0x8044C630@l */
/* 80345D28  80 1E 00 00 */	lwz r0, 0(r30)
/* 80345D2C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80345D30  90 1E 00 00 */	stw r0, 0(r30)
/* 80345D34  80 1E 00 00 */	lwz r0, 0(r30)
/* 80345D38  7C 00 D3 78 */	or r0, r0, r26
/* 80345D3C  90 1E 00 00 */	stw r0, 0(r30)
/* 80345D40  4B FF C9 DD */	bl __OSGetSystemTime
/* 80345D44  57 60 18 38 */	slwi r0, r27, 3
/* 80345D48  7C BF 02 14 */	add r5, r31, r0
/* 80345D4C  90 85 01 24 */	stw r4, 0x124(r5)
/* 80345D50  3C 80 80 00 */	lis r4, 0x8000
/* 80345D54  57 40 07 3F */	clrlwi. r0, r26, 0x1c
/* 80345D58  90 65 01 20 */	stw r3, 0x120(r5)
/* 80345D5C  7C 84 DC 30 */	srw r4, r4, r27
/* 80345D60  80 6D 91 78 */	lwz r3, __PADFixBits(r13)
/* 80345D64  83 9E 00 00 */	lwz r28, 0(r30)
/* 80345D68  7C 60 20 78 */	andc r0, r3, r4
/* 80345D6C  90 0D 91 78 */	stw r0, __PADFixBits(r13)
/* 80345D70  7C 7A 20 38 */	and r26, r3, r4
/* 80345D74  40 82 00 24 */	bne lbl_80345D98
/* 80345D78  57 83 00 C8 */	rlwinm r3, r28, 0, 3, 4
/* 80345D7C  3C 03 F8 00 */	addis r0, r3, 0xf800
/* 80345D80  28 00 00 00 */	cmplwi r0, 0
/* 80345D84  40 82 00 14 */	bne lbl_80345D98
/* 80345D88  57 80 00 01 */	rlwinm. r0, r28, 0, 0, 0
/* 80345D8C  41 82 00 0C */	beq lbl_80345D98
/* 80345D90  57 80 01 4B */	rlwinm. r0, r28, 0, 5, 5
/* 80345D94  41 82 00 5C */	beq lbl_80345DF0
lbl_80345D98:
/* 80345D98  38 7B 00 00 */	addi r3, r27, 0
/* 80345D9C  38 80 00 00 */	li r4, 0
/* 80345DA0  4B FF AA AD */	bl OSSetWirelessID
/* 80345DA4  57 60 20 36 */	slwi r0, r27, 4
/* 80345DA8  83 DE 00 00 */	lwz r30, 0(r30)
/* 80345DAC  7F FF 02 14 */	add r31, r31, r0
/* 80345DB0  3B A0 00 00 */	li r29, 0
/* 80345DB4  3B 9D 00 00 */	addi r28, r29, 0
/* 80345DB8  3B FF 01 60 */	addi r31, r31, 0x160
lbl_80345DBC:
/* 80345DBC  81 9F 00 00 */	lwz r12, 0(r31)
/* 80345DC0  28 0C 00 00 */	cmplwi r12, 0
/* 80345DC4  41 82 00 18 */	beq lbl_80345DDC
/* 80345DC8  93 9F 00 00 */	stw r28, 0(r31)
/* 80345DCC  7D 88 03 A6 */	mtlr r12
/* 80345DD0  38 7B 00 00 */	addi r3, r27, 0
/* 80345DD4  38 9E 00 00 */	addi r4, r30, 0
/* 80345DD8  4E 80 00 21 */	blrl 
lbl_80345DDC:
/* 80345DDC  3B BD 00 01 */	addi r29, r29, 1
/* 80345DE0  2C 1D 00 04 */	cmpwi r29, 4
/* 80345DE4  3B FF 00 04 */	addi r31, r31, 4
/* 80345DE8  41 80 FF D4 */	blt lbl_80345DBC
/* 80345DEC  48 00 01 90 */	b lbl_80345F7C
lbl_80345DF0:
/* 80345DF0  7F 63 DB 78 */	mr r3, r27
/* 80345DF4  4B FF A9 D5 */	bl OSGetWirelessID
/* 80345DF8  2C 1A 00 00 */	cmpwi r26, 0
/* 80345DFC  54 7A 42 2E */	rlwinm r26, r3, 8, 8, 0x17
/* 80345E00  41 82 00 54 */	beq lbl_80345E54
/* 80345E04  57 40 02 D7 */	rlwinm. r0, r26, 0, 0xb, 0xb
/* 80345E08  41 82 00 4C */	beq lbl_80345E54
/* 80345E0C  3C 60 00 D0 */	lis r3, 0x00D0 /* 0x00CFFF00@ha */
/* 80345E10  38 03 FF 00 */	addi r0, r3, 0xFF00 /* 0x00CFFF00@l */
/* 80345E14  7F 40 00 38 */	and r0, r26, r0
/* 80345E18  64 00 4E 10 */	oris r0, r0, 0x4e10
/* 80345E1C  7C 9F EA 14 */	add r4, r31, r29
/* 80345E20  94 04 01 F0 */	stwu r0, 0x1f0(r4)
/* 80345E24  38 00 00 80 */	li r0, 0x80
/* 80345E28  3C 60 80 34 */	lis r3, GetTypeCallback@ha /* 0x80345CF8@ha */
/* 80345E2C  90 1E 00 00 */	stw r0, 0(r30)
/* 80345E30  39 03 5C F8 */	addi r8, r3, GetTypeCallback@l /* 0x80345CF8@l */
/* 80345E34  38 7B 00 00 */	addi r3, r27, 0
/* 80345E38  38 DE 00 00 */	addi r6, r30, 0
/* 80345E3C  38 A0 00 03 */	li r5, 3
/* 80345E40  38 E0 00 03 */	li r7, 3
/* 80345E44  39 40 00 00 */	li r10, 0
/* 80345E48  39 20 00 00 */	li r9, 0
/* 80345E4C  4B FF FD 41 */	bl SITransfer
/* 80345E50  48 00 01 2C */	b lbl_80345F7C
lbl_80345E54:
/* 80345E54  57 80 02 D7 */	rlwinm. r0, r28, 0, 0xb, 0xb
/* 80345E58  41 82 00 70 */	beq lbl_80345EC8
/* 80345E5C  3C 60 00 D0 */	lis r3, 0x00D0 /* 0x00CFFF00@ha */
/* 80345E60  38 63 FF 00 */	addi r3, r3, 0xFF00 /* 0x00CFFF00@l */
/* 80345E64  7F 40 18 38 */	and r0, r26, r3
/* 80345E68  7F 83 18 38 */	and r3, r28, r3
/* 80345E6C  7C 00 18 40 */	cmplw r0, r3
/* 80345E70  41 82 00 C4 */	beq lbl_80345F34
/* 80345E74  57 40 02 D7 */	rlwinm. r0, r26, 0, 0xb, 0xb
/* 80345E78  40 82 00 14 */	bne lbl_80345E8C
/* 80345E7C  64 7A 00 10 */	oris r26, r3, 0x10
/* 80345E80  38 7B 00 00 */	addi r3, r27, 0
/* 80345E84  57 44 C4 3E */	rlwinm r4, r26, 0x18, 0x10, 0x1f
/* 80345E88  4B FF A9 C5 */	bl OSSetWirelessID
lbl_80345E8C:
/* 80345E8C  67 40 4E 00 */	oris r0, r26, 0x4e00
/* 80345E90  7C 9F EA 14 */	add r4, r31, r29
/* 80345E94  94 04 01 F0 */	stwu r0, 0x1f0(r4)
/* 80345E98  38 00 00 80 */	li r0, 0x80
/* 80345E9C  3C 60 80 34 */	lis r3, GetTypeCallback@ha /* 0x80345CF8@ha */
/* 80345EA0  90 1E 00 00 */	stw r0, 0(r30)
/* 80345EA4  39 03 5C F8 */	addi r8, r3, GetTypeCallback@l /* 0x80345CF8@l */
/* 80345EA8  38 7B 00 00 */	addi r3, r27, 0
/* 80345EAC  38 DE 00 00 */	addi r6, r30, 0
/* 80345EB0  38 A0 00 03 */	li r5, 3
/* 80345EB4  38 E0 00 03 */	li r7, 3
/* 80345EB8  39 40 00 00 */	li r10, 0
/* 80345EBC  39 20 00 00 */	li r9, 0
/* 80345EC0  4B FF FC CD */	bl SITransfer
/* 80345EC4  48 00 00 B8 */	b lbl_80345F7C
lbl_80345EC8:
/* 80345EC8  57 80 00 43 */	rlwinm. r0, r28, 0, 1, 1
/* 80345ECC  41 82 00 5C */	beq lbl_80345F28
/* 80345ED0  3C 60 00 D0 */	lis r3, 0x00D0 /* 0x00CFFF00@ha */
/* 80345ED4  38 03 FF 00 */	addi r0, r3, 0xFF00 /* 0x00CFFF00@l */
/* 80345ED8  7F 9C 00 38 */	and r28, r28, r0
/* 80345EDC  67 9C 00 10 */	oris r28, r28, 0x10
/* 80345EE0  38 7B 00 00 */	addi r3, r27, 0
/* 80345EE4  57 84 C4 3E */	rlwinm r4, r28, 0x18, 0x10, 0x1f
/* 80345EE8  4B FF A9 65 */	bl OSSetWirelessID
/* 80345EEC  67 80 4E 00 */	oris r0, r28, 0x4e00
/* 80345EF0  7C 9F EA 14 */	add r4, r31, r29
/* 80345EF4  94 04 01 F0 */	stwu r0, 0x1f0(r4)
/* 80345EF8  38 00 00 80 */	li r0, 0x80
/* 80345EFC  3C 60 80 34 */	lis r3, GetTypeCallback@ha /* 0x80345CF8@ha */
/* 80345F00  90 1E 00 00 */	stw r0, 0(r30)
/* 80345F04  39 03 5C F8 */	addi r8, r3, GetTypeCallback@l /* 0x80345CF8@l */
/* 80345F08  38 7B 00 00 */	addi r3, r27, 0
/* 80345F0C  38 DE 00 00 */	addi r6, r30, 0
/* 80345F10  38 A0 00 03 */	li r5, 3
/* 80345F14  38 E0 00 03 */	li r7, 3
/* 80345F18  39 40 00 00 */	li r10, 0
/* 80345F1C  39 20 00 00 */	li r9, 0
/* 80345F20  4B FF FC 6D */	bl SITransfer
/* 80345F24  48 00 00 58 */	b lbl_80345F7C
lbl_80345F28:
/* 80345F28  38 7B 00 00 */	addi r3, r27, 0
/* 80345F2C  38 80 00 00 */	li r4, 0
/* 80345F30  4B FF A9 1D */	bl OSSetWirelessID
lbl_80345F34:
/* 80345F34  57 60 20 36 */	slwi r0, r27, 4
/* 80345F38  83 DE 00 00 */	lwz r30, 0(r30)
/* 80345F3C  7F FF 02 14 */	add r31, r31, r0
/* 80345F40  3B A0 00 00 */	li r29, 0
/* 80345F44  3B 9D 00 00 */	addi r28, r29, 0
/* 80345F48  3B FF 01 60 */	addi r31, r31, 0x160
lbl_80345F4C:
/* 80345F4C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80345F50  28 0C 00 00 */	cmplwi r12, 0
/* 80345F54  41 82 00 18 */	beq lbl_80345F6C
/* 80345F58  93 9F 00 00 */	stw r28, 0(r31)
/* 80345F5C  7D 88 03 A6 */	mtlr r12
/* 80345F60  38 7B 00 00 */	addi r3, r27, 0
/* 80345F64  38 9E 00 00 */	addi r4, r30, 0
/* 80345F68  4E 80 00 21 */	blrl 
lbl_80345F6C:
/* 80345F6C  3B BD 00 01 */	addi r29, r29, 1
/* 80345F70  2C 1D 00 04 */	cmpwi r29, 4
/* 80345F74  3B FF 00 04 */	addi r31, r31, 4
/* 80345F78  41 80 FF D4 */	blt lbl_80345F4C
lbl_80345F7C:
/* 80345F7C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80345F80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80345F84  38 21 00 30 */	addi r1, r1, 0x30
/* 80345F88  7C 08 03 A6 */	mtlr r0
/* 80345F8C  4E 80 00 20 */	blr 
