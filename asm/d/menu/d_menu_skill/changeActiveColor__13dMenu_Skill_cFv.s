lbl_801F8F28:
/* 801F8F28  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801F8F2C  7C 08 02 A6 */	mflr r0
/* 801F8F30  90 01 00 64 */	stw r0, 0x64(r1)
/* 801F8F34  39 61 00 60 */	addi r11, r1, 0x60
/* 801F8F38  48 16 92 9D */	bl _savegpr_27
/* 801F8F3C  7C 7E 1B 78 */	mr r30, r3
/* 801F8F40  4B FF FF 5D */	bl setCursorPos__13dMenu_Skill_cFv
/* 801F8F44  3B E0 00 00 */	li r31, 0
/* 801F8F48  3B A0 00 00 */	li r29, 0
/* 801F8F4C  3B 80 00 00 */	li r28, 0
lbl_801F8F50:
/* 801F8F50  88 1E 02 06 */	lbz r0, 0x206(r30)
/* 801F8F54  7C 1F 00 00 */	cmpw r31, r0
/* 801F8F58  40 82 00 E4 */	bne lbl_801F903C
/* 801F8F5C  80 1E 01 C8 */	lwz r0, 0x1c8(r30)
/* 801F8F60  90 01 00 40 */	stw r0, 0x40(r1)
/* 801F8F64  80 1E 01 A0 */	lwz r0, 0x1a0(r30)
/* 801F8F68  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F8F6C  7F 7E E2 14 */	add r27, r30, r28
/* 801F8F70  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 801F8F74  38 81 00 44 */	addi r4, r1, 0x44
/* 801F8F78  38 A1 00 40 */	addi r5, r1, 0x40
/* 801F8F7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8F80  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801F8F84  7D 89 03 A6 */	mtctr r12
/* 801F8F88  4E 80 04 21 */	bctrl 
/* 801F8F8C  80 1E 01 D4 */	lwz r0, 0x1d4(r30)
/* 801F8F90  90 01 00 38 */	stw r0, 0x38(r1)
/* 801F8F94  80 1E 01 AC */	lwz r0, 0x1ac(r30)
/* 801F8F98  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801F8F9C  80 7B 00 B4 */	lwz r3, 0xb4(r27)
/* 801F8FA0  38 81 00 3C */	addi r4, r1, 0x3c
/* 801F8FA4  38 A1 00 38 */	addi r5, r1, 0x38
/* 801F8FA8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8FAC  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801F8FB0  7D 89 03 A6 */	mtctr r12
/* 801F8FB4  4E 80 04 21 */	bctrl 
/* 801F8FB8  80 1E 01 D4 */	lwz r0, 0x1d4(r30)
/* 801F8FBC  90 01 00 30 */	stw r0, 0x30(r1)
/* 801F8FC0  80 1E 01 AC */	lwz r0, 0x1ac(r30)
/* 801F8FC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F8FC8  80 7B 00 BC */	lwz r3, 0xbc(r27)
/* 801F8FCC  38 81 00 34 */	addi r4, r1, 0x34
/* 801F8FD0  38 A1 00 30 */	addi r5, r1, 0x30
/* 801F8FD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8FD8  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801F8FDC  7D 89 03 A6 */	mtctr r12
/* 801F8FE0  4E 80 04 21 */	bctrl 
/* 801F8FE4  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 801F8FE8  7F 7E EA 14 */	add r27, r30, r29
/* 801F8FEC  80 7B 01 60 */	lwz r3, 0x160(r27)
/* 801F8FF0  80 63 00 04 */	lwz r3, 4(r3)
/* 801F8FF4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F8FF8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F8FFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9000  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F9004  7D 89 03 A6 */	mtctr r12
/* 801F9008  4E 80 04 21 */	bctrl 
/* 801F900C  80 1E 01 D8 */	lwz r0, 0x1d8(r30)
/* 801F9010  90 01 00 28 */	stw r0, 0x28(r1)
/* 801F9014  80 1E 01 B0 */	lwz r0, 0x1b0(r30)
/* 801F9018  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801F901C  80 7B 00 94 */	lwz r3, 0x94(r27)
/* 801F9020  38 81 00 2C */	addi r4, r1, 0x2c
/* 801F9024  38 A1 00 28 */	addi r5, r1, 0x28
/* 801F9028  81 83 00 00 */	lwz r12, 0(r3)
/* 801F902C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801F9030  7D 89 03 A6 */	mtctr r12
/* 801F9034  4E 80 04 21 */	bctrl 
/* 801F9038  48 00 00 E0 */	b lbl_801F9118
lbl_801F903C:
/* 801F903C  80 1E 01 DC */	lwz r0, 0x1dc(r30)
/* 801F9040  90 01 00 20 */	stw r0, 0x20(r1)
/* 801F9044  80 1E 01 B4 */	lwz r0, 0x1b4(r30)
/* 801F9048  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F904C  7F 7E E2 14 */	add r27, r30, r28
/* 801F9050  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 801F9054  38 81 00 24 */	addi r4, r1, 0x24
/* 801F9058  38 A1 00 20 */	addi r5, r1, 0x20
/* 801F905C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9060  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801F9064  7D 89 03 A6 */	mtctr r12
/* 801F9068  4E 80 04 21 */	bctrl 
/* 801F906C  80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 801F9070  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F9074  80 1E 01 C0 */	lwz r0, 0x1c0(r30)
/* 801F9078  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801F907C  80 7B 00 B4 */	lwz r3, 0xb4(r27)
/* 801F9080  38 81 00 1C */	addi r4, r1, 0x1c
/* 801F9084  38 A1 00 18 */	addi r5, r1, 0x18
/* 801F9088  81 83 00 00 */	lwz r12, 0(r3)
/* 801F908C  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801F9090  7D 89 03 A6 */	mtctr r12
/* 801F9094  4E 80 04 21 */	bctrl 
/* 801F9098  80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 801F909C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F90A0  80 1E 01 C0 */	lwz r0, 0x1c0(r30)
/* 801F90A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F90A8  80 7B 00 BC */	lwz r3, 0xbc(r27)
/* 801F90AC  38 81 00 14 */	addi r4, r1, 0x14
/* 801F90B0  38 A1 00 10 */	addi r5, r1, 0x10
/* 801F90B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F90B8  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801F90BC  7D 89 03 A6 */	mtctr r12
/* 801F90C0  4E 80 04 21 */	bctrl 
/* 801F90C4  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 801F90C8  7F 7E EA 14 */	add r27, r30, r29
/* 801F90CC  80 7B 01 60 */	lwz r3, 0x160(r27)
/* 801F90D0  80 63 00 04 */	lwz r3, 4(r3)
/* 801F90D4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F90D8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F90DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F90E0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F90E4  7D 89 03 A6 */	mtctr r12
/* 801F90E8  4E 80 04 21 */	bctrl 
/* 801F90EC  80 1E 01 EC */	lwz r0, 0x1ec(r30)
/* 801F90F0  90 01 00 08 */	stw r0, 8(r1)
/* 801F90F4  80 1E 01 C4 */	lwz r0, 0x1c4(r30)
/* 801F90F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F90FC  80 7B 00 94 */	lwz r3, 0x94(r27)
/* 801F9100  38 81 00 0C */	addi r4, r1, 0xc
/* 801F9104  38 A1 00 08 */	addi r5, r1, 8
/* 801F9108  81 83 00 00 */	lwz r12, 0(r3)
/* 801F910C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801F9110  7D 89 03 A6 */	mtctr r12
/* 801F9114  4E 80 04 21 */	bctrl 
lbl_801F9118:
/* 801F9118  3B FF 00 01 */	addi r31, r31, 1
/* 801F911C  2C 1F 00 07 */	cmpwi r31, 7
/* 801F9120  3B BD 00 04 */	addi r29, r29, 4
/* 801F9124  3B 9C 00 10 */	addi r28, r28, 0x10
/* 801F9128  41 80 FE 28 */	blt lbl_801F8F50
/* 801F912C  39 61 00 60 */	addi r11, r1, 0x60
/* 801F9130  48 16 90 F1 */	bl _restgpr_27
/* 801F9134  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801F9138  7C 08 03 A6 */	mtlr r0
/* 801F913C  38 21 00 60 */	addi r1, r1, 0x60
/* 801F9140  4E 80 00 20 */	blr 
