lbl_80356BC8:
/* 80356BC8  7C 08 02 A6 */	mflr r0
/* 80356BCC  90 01 00 04 */	stw r0, 4(r1)
/* 80356BD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80356BD4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80356BD8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80356BDC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80356BE0  3B A3 00 00 */	addi r29, r3, 0
/* 80356BE4  1C 9D 01 10 */	mulli r4, r29, 0x110
/* 80356BE8  93 81 00 20 */	stw r28, 0x20(r1)
/* 80356BEC  3C 60 80 45 */	lis r3, __CARDBlock@ha
/* 80356BF0  38 03 CB C0 */	addi r0, r3, __CARDBlock@l
/* 80356BF4  7C 60 22 14 */	add r3, r0, r4
/* 80356BF8  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80356BFC  3B E3 00 00 */	addi r31, r3, 0
/* 80356C00  2C 00 00 00 */	cmpwi r0, 0
/* 80356C04  40 82 02 F0 */	bne lbl_80356EF4
/* 80356C08  38 7D 00 00 */	addi r3, r29, 0
/* 80356C0C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80356C10  38 80 00 00 */	li r4, 0
/* 80356C14  4B FE D6 25 */	bl EXIGetID
/* 80356C18  2C 03 00 00 */	cmpwi r3, 0
/* 80356C1C  40 82 00 0C */	bne lbl_80356C28
/* 80356C20  3B C0 FF FD */	li r30, -3
/* 80356C24  48 00 00 20 */	b lbl_80356C44
lbl_80356C28:
/* 80356C28  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80356C2C  4B FF FD 1D */	bl IsCard
/* 80356C30  2C 03 00 00 */	cmpwi r3, 0
/* 80356C34  41 82 00 0C */	beq lbl_80356C40
/* 80356C38  3B C0 00 00 */	li r30, 0
/* 80356C3C  48 00 00 08 */	b lbl_80356C44
lbl_80356C40:
/* 80356C40  3B C0 FF FE */	li r30, -2
lbl_80356C44:
/* 80356C44  2C 1E 00 00 */	cmpwi r30, 0
/* 80356C48  41 80 03 88 */	blt lbl_80356FD0
/* 80356C4C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80356C50  3C 80 80 3D */	lis r4, SectorSizeTable@ha
/* 80356C54  38 A4 20 00 */	addi r5, r4, SectorSizeTable@l
/* 80356C58  90 1F 01 08 */	stw r0, 0x108(r31)
/* 80356C5C  3C 60 80 3D */	lis r3, LatencyTable@ha
/* 80356C60  38 03 20 20 */	addi r0, r3, LatencyTable@l
/* 80356C64  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80356C68  38 7D 00 00 */	addi r3, r29, 0
/* 80356C6C  38 9F 00 12 */	addi r4, r31, 0x12
/* 80356C70  54 C6 06 3A */	rlwinm r6, r6, 0, 0x18, 0x1d
/* 80356C74  B0 DF 00 08 */	sth r6, 8(r31)
/* 80356C78  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80356C7C  54 C6 BE FA */	rlwinm r6, r6, 0x17, 0x1b, 0x1d
/* 80356C80  7C A5 32 14 */	add r5, r5, r6
/* 80356C84  80 A5 00 00 */	lwz r5, 0(r5)
/* 80356C88  90 BF 00 0C */	stw r5, 0xc(r31)
/* 80356C8C  A0 DF 00 08 */	lhz r6, 8(r31)
/* 80356C90  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80356C94  54 C6 A0 16 */	slwi r6, r6, 0x14
/* 80356C98  7C C6 1E 70 */	srawi r6, r6, 3
/* 80356C9C  7C C6 01 94 */	addze r6, r6
/* 80356CA0  7C A6 2B D6 */	divw r5, r6, r5
/* 80356CA4  B0 BF 00 10 */	sth r5, 0x10(r31)
/* 80356CA8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80356CAC  54 A5 D6 FA */	rlwinm r5, r5, 0x1a, 0x1b, 0x1d
/* 80356CB0  7C A0 2A 14 */	add r5, r0, r5
/* 80356CB4  80 05 00 00 */	lwz r0, 0(r5)
/* 80356CB8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80356CBC  4B FF C2 79 */	bl __CARDReadVendorID
/* 80356CC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80356CC4  41 80 03 0C */	blt lbl_80356FD0
/* 80356CC8  4B FF D2 41 */	bl CARDGetFastMode
/* 80356CCC  2C 03 00 00 */	cmpwi r3, 0
/* 80356CD0  41 82 00 20 */	beq lbl_80356CF0
/* 80356CD4  A0 1F 00 12 */	lhz r0, 0x12(r31)
/* 80356CD8  7C 00 46 70 */	srawi r0, r0, 8
/* 80356CDC  2C 00 00 EC */	cmpwi r0, 0xec
/* 80356CE0  40 82 00 10 */	bne lbl_80356CF0
/* 80356CE4  38 00 02 00 */	li r0, 0x200
/* 80356CE8  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 80356CEC  48 00 00 0C */	b lbl_80356CF8
lbl_80356CF0:
/* 80356CF0  38 00 00 80 */	li r0, 0x80
/* 80356CF4  B0 1F 00 0A */	sth r0, 0xa(r31)
lbl_80356CF8:
/* 80356CF8  7F A3 EB 78 */	mr r3, r29
/* 80356CFC  4B FF C3 29 */	bl __CARDClearStatus
/* 80356D00  7C 7E 1B 79 */	or. r30, r3, r3
/* 80356D04  41 80 02 CC */	blt lbl_80356FD0
/* 80356D08  38 7D 00 00 */	addi r3, r29, 0
/* 80356D0C  38 81 00 14 */	addi r4, r1, 0x14
/* 80356D10  4B FF C1 35 */	bl __CARDReadStatus
/* 80356D14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80356D18  41 80 02 B8 */	blt lbl_80356FD0
/* 80356D1C  7F A3 EB 78 */	mr r3, r29
/* 80356D20  4B FE C8 4D */	bl EXIProbe
/* 80356D24  2C 03 00 00 */	cmpwi r3, 0
/* 80356D28  40 82 00 0C */	bne lbl_80356D34
/* 80356D2C  3B C0 FF FD */	li r30, -3
/* 80356D30  48 00 02 A0 */	b lbl_80356FD0
lbl_80356D34:
/* 80356D34  88 01 00 14 */	lbz r0, 0x14(r1)
/* 80356D38  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80356D3C  40 82 01 14 */	bne lbl_80356E50
/* 80356D40  38 7D 00 00 */	addi r3, r29, 0
/* 80356D44  38 9F 00 18 */	addi r4, r31, 0x18
/* 80356D48  4B FF D5 51 */	bl __CARDUnlock
/* 80356D4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80356D50  41 80 02 80 */	blt lbl_80356FD0
/* 80356D54  4B FE 94 4D */	bl __OSLockSramEx
/* 80356D58  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80356D5C  7C 83 02 14 */	add r4, r3, r0
/* 80356D60  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 80356D64  38 BF 00 18 */	addi r5, r31, 0x18
/* 80356D68  98 04 00 00 */	stb r0, 0(r4)
/* 80356D6C  39 05 00 02 */	addi r8, r5, 2
/* 80356D70  39 25 00 03 */	addi r9, r5, 3
/* 80356D74  88 FF 00 18 */	lbz r7, 0x18(r31)
/* 80356D78  39 45 00 04 */	addi r10, r5, 4
/* 80356D7C  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 80356D80  39 65 00 05 */	addi r11, r5, 5
/* 80356D84  39 85 00 06 */	addi r12, r5, 6
/* 80356D88  98 04 00 01 */	stb r0, 1(r4)
/* 80356D8C  3B 85 00 07 */	addi r28, r5, 7
/* 80356D90  38 A0 00 08 */	li r5, 8
/* 80356D94  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 80356D98  88 C8 00 00 */	lbz r6, 0(r8)
/* 80356D9C  7C 07 02 14 */	add r0, r7, r0
/* 80356DA0  98 C4 00 02 */	stb r6, 2(r4)
/* 80356DA4  88 E8 00 00 */	lbz r7, 0(r8)
/* 80356DA8  88 C9 00 00 */	lbz r6, 0(r9)
/* 80356DAC  7C 00 3A 14 */	add r0, r0, r7
/* 80356DB0  98 C4 00 03 */	stb r6, 3(r4)
/* 80356DB4  88 E9 00 00 */	lbz r7, 0(r9)
/* 80356DB8  88 CA 00 00 */	lbz r6, 0(r10)
/* 80356DBC  7C 00 3A 14 */	add r0, r0, r7
/* 80356DC0  98 C4 00 04 */	stb r6, 4(r4)
/* 80356DC4  88 EA 00 00 */	lbz r7, 0(r10)
/* 80356DC8  88 CB 00 00 */	lbz r6, 0(r11)
/* 80356DCC  7C 00 3A 14 */	add r0, r0, r7
/* 80356DD0  98 C4 00 05 */	stb r6, 5(r4)
/* 80356DD4  88 EB 00 00 */	lbz r7, 0(r11)
/* 80356DD8  88 CC 00 00 */	lbz r6, 0(r12)
/* 80356DDC  7C 00 3A 14 */	add r0, r0, r7
/* 80356DE0  98 C4 00 06 */	stb r6, 6(r4)
/* 80356DE4  88 EC 00 00 */	lbz r7, 0(r12)
/* 80356DE8  88 DC 00 00 */	lbz r6, 0(r28)
/* 80356DEC  7C 00 3A 14 */	add r0, r0, r7
/* 80356DF0  98 C4 00 07 */	stb r6, 7(r4)
/* 80356DF4  88 DC 00 00 */	lbz r6, 0(r28)
/* 80356DF8  7C 00 32 14 */	add r0, r0, r6
/* 80356DFC  48 00 01 F0 */	b lbl_80356FEC
lbl_80356E00:
/* 80356E00  20 85 00 0C */	subfic r4, r5, 0xc
/* 80356E04  2C 05 00 0C */	cmpwi r5, 0xc
/* 80356E08  7C 89 03 A6 */	mtctr r4
/* 80356E0C  40 80 00 28 */	bge lbl_80356E34
lbl_80356E10:
/* 80356E10  38 E5 00 18 */	addi r7, r5, 0x18
/* 80356E14  7C FF 3A 14 */	add r7, r31, r7
/* 80356E18  88 87 00 00 */	lbz r4, 0(r7)
/* 80356E1C  38 A5 00 01 */	addi r5, r5, 1
/* 80356E20  98 86 00 00 */	stb r4, 0(r6)
/* 80356E24  38 C6 00 01 */	addi r6, r6, 1
/* 80356E28  88 87 00 00 */	lbz r4, 0(r7)
/* 80356E2C  7C 00 22 14 */	add r0, r0, r4
/* 80356E30  42 00 FF E0 */	bdnz lbl_80356E10
lbl_80356E34:
/* 80356E34  7C 63 EA 14 */	add r3, r3, r29
/* 80356E38  7C 00 00 F8 */	nor r0, r0, r0
/* 80356E3C  98 03 00 26 */	stb r0, 0x26(r3)
/* 80356E40  38 60 00 01 */	li r3, 1
/* 80356E44  4B FE 97 19 */	bl __OSUnlockSramEx
/* 80356E48  7F C3 F3 78 */	mr r3, r30
/* 80356E4C  48 00 01 B0 */	b lbl_80356FFC
lbl_80356E50:
/* 80356E50  38 00 00 01 */	li r0, 1
/* 80356E54  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80356E58  4B FE 93 49 */	bl __OSLockSramEx
/* 80356E5C  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80356E60  3B C3 00 00 */	addi r30, r3, 0
/* 80356E64  7C BE 02 14 */	add r5, r30, r0
/* 80356E68  88 85 00 00 */	lbz r4, 0(r5)
/* 80356E6C  38 C0 00 08 */	li r6, 8
/* 80356E70  88 05 00 01 */	lbz r0, 1(r5)
/* 80356E74  88 65 00 02 */	lbz r3, 2(r5)
/* 80356E78  7F 84 02 14 */	add r28, r4, r0
/* 80356E7C  88 05 00 03 */	lbz r0, 3(r5)
/* 80356E80  7F 9C 1A 14 */	add r28, r28, r3
/* 80356E84  88 65 00 04 */	lbz r3, 4(r5)
/* 80356E88  7F 9C 02 14 */	add r28, r28, r0
/* 80356E8C  88 05 00 05 */	lbz r0, 5(r5)
/* 80356E90  7F 9C 1A 14 */	add r28, r28, r3
/* 80356E94  88 65 00 06 */	lbz r3, 6(r5)
/* 80356E98  7F 9C 02 14 */	add r28, r28, r0
/* 80356E9C  88 05 00 07 */	lbz r0, 7(r5)
/* 80356EA0  7F 9C 1A 14 */	add r28, r28, r3
/* 80356EA4  7F 9C 02 14 */	add r28, r28, r0
/* 80356EA8  48 00 01 4C */	b lbl_80356FF4
lbl_80356EAC:
/* 80356EAC  20 06 00 0C */	subfic r0, r6, 0xc
/* 80356EB0  2C 06 00 0C */	cmpwi r6, 0xc
/* 80356EB4  7C 09 03 A6 */	mtctr r0
/* 80356EB8  40 80 00 14 */	bge lbl_80356ECC
lbl_80356EBC:
/* 80356EBC  88 03 00 00 */	lbz r0, 0(r3)
/* 80356EC0  38 63 00 01 */	addi r3, r3, 1
/* 80356EC4  7F 9C 02 14 */	add r28, r28, r0
/* 80356EC8  42 00 FF F4 */	bdnz lbl_80356EBC
lbl_80356ECC:
/* 80356ECC  38 60 00 00 */	li r3, 0
/* 80356ED0  4B FE 96 8D */	bl __OSUnlockSramEx
/* 80356ED4  7C 7E EA 14 */	add r3, r30, r29
/* 80356ED8  7F 80 E0 F8 */	nor r0, r28, r28
/* 80356EDC  88 63 00 26 */	lbz r3, 0x26(r3)
/* 80356EE0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80356EE4  7C 03 00 40 */	cmplw r3, r0
/* 80356EE8  41 82 00 0C */	beq lbl_80356EF4
/* 80356EEC  3B C0 FF FB */	li r30, -5
/* 80356EF0  48 00 00 E0 */	b lbl_80356FD0
lbl_80356EF4:
/* 80356EF4  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80356EF8  2C 00 00 01 */	cmpwi r0, 1
/* 80356EFC  40 82 00 88 */	bne lbl_80356F84
/* 80356F00  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 80356F04  3C 03 80 00 */	addis r0, r3, 0x8000
/* 80356F08  28 00 00 04 */	cmplwi r0, 4
/* 80356F0C  40 82 00 34 */	bne lbl_80356F40
/* 80356F10  4B FE 92 91 */	bl __OSLockSramEx
/* 80356F14  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80356F18  7F 83 02 2E */	lhzx r28, r3, r0
/* 80356F1C  38 60 00 00 */	li r3, 0
/* 80356F20  4B FE 96 3D */	bl __OSUnlockSramEx
/* 80356F24  A0 0D 84 F0 */	lhz r0, struct_80450A70+0x0(r13)
/* 80356F28  28 00 FF FF */	cmplwi r0, 0xffff
/* 80356F2C  41 82 00 0C */	beq lbl_80356F38
/* 80356F30  7C 1C 00 40 */	cmplw r28, r0
/* 80356F34  41 82 00 0C */	beq lbl_80356F40
lbl_80356F38:
/* 80356F38  3B C0 FF FE */	li r30, -2
/* 80356F3C  48 00 00 94 */	b lbl_80356FD0
lbl_80356F40:
/* 80356F40  38 00 00 02 */	li r0, 2
/* 80356F44  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80356F48  38 7D 00 00 */	addi r3, r29, 0
/* 80356F4C  38 80 00 01 */	li r4, 1
/* 80356F50  4B FF BE 35 */	bl __CARDEnableInterrupt
/* 80356F54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80356F58  41 80 00 78 */	blt lbl_80356FD0
/* 80356F5C  3C 60 80 35 */	lis r3, __CARDExiHandler@ha
/* 80356F60  38 83 2B 40 */	addi r4, r3, __CARDExiHandler@l
/* 80356F64  38 7D 00 00 */	addi r3, r29, 0
/* 80356F68  4B FE C4 15 */	bl EXISetExiCallback
/* 80356F6C  7F A3 EB 78 */	mr r3, r29
/* 80356F70  4B FE D1 AD */	bl EXIUnlock
/* 80356F74  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000A000@ha */
/* 80356F78  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 80356F7C  38 84 A0 00 */	addi r4, r4, 0xA000 /* 0x0000A000@l */
/* 80356F80  4B FE 46 01 */	bl DCInvalidateRange
lbl_80356F84:
/* 80356F84  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80356F88  3C 60 80 35 */	lis r3, __CARDMountCallback@ha
/* 80356F8C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80356F90  38 E3 70 1C */	addi r7, r3, __CARDMountCallback@l
/* 80356F94  38 64 FF FE */	addi r3, r4, -2
/* 80356F98  7C 80 19 D6 */	mullw r4, r0, r3
/* 80356F9C  80 BF 00 80 */	lwz r5, 0x80(r31)
/* 80356FA0  54 60 68 24 */	slwi r0, r3, 0xd
/* 80356FA4  7C C5 02 14 */	add r6, r5, r0
/* 80356FA8  38 7D 00 00 */	addi r3, r29, 0
/* 80356FAC  38 A0 20 00 */	li r5, 0x2000
/* 80356FB0  4B FF E2 B1 */	bl __CARDRead
/* 80356FB4  7C 7C 1B 79 */	or. r28, r3, r3
/* 80356FB8  40 80 00 10 */	bge lbl_80356FC8
/* 80356FBC  38 7F 00 00 */	addi r3, r31, 0
/* 80356FC0  38 9C 00 00 */	addi r4, r28, 0
/* 80356FC4  4B FF CC A9 */	bl __CARDPutControlBlock
lbl_80356FC8:
/* 80356FC8  7F 83 E3 78 */	mr r3, r28
/* 80356FCC  48 00 00 30 */	b lbl_80356FFC
lbl_80356FD0:
/* 80356FD0  7F A3 EB 78 */	mr r3, r29
/* 80356FD4  4B FE D1 49 */	bl EXIUnlock
/* 80356FD8  38 7D 00 00 */	addi r3, r29, 0
/* 80356FDC  38 9E 00 00 */	addi r4, r30, 0
/* 80356FE0  48 00 03 5D */	bl DoUnmount
/* 80356FE4  7F C3 F3 78 */	mr r3, r30
/* 80356FE8  48 00 00 14 */	b lbl_80356FFC
lbl_80356FEC:
/* 80356FEC  38 C4 00 08 */	addi r6, r4, 8
/* 80356FF0  4B FF FE 10 */	b lbl_80356E00
lbl_80356FF4:
/* 80356FF4  38 65 00 08 */	addi r3, r5, 8
/* 80356FF8  4B FF FE B4 */	b lbl_80356EAC
lbl_80356FFC:
/* 80356FFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80357000  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80357004  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80357008  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8035700C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80357010  38 21 00 30 */	addi r1, r1, 0x30
/* 80357014  7C 08 03 A6 */	mtlr r0
/* 80357018  4E 80 00 20 */	blr 
