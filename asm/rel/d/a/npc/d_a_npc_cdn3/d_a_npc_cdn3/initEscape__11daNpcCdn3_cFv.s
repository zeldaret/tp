lbl_80979F08:
/* 80979F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80979F0C  7C 08 02 A6 */	mflr r0
/* 80979F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80979F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80979F18  93 C1 00 08 */	stw r30, 8(r1)
/* 80979F1C  7C 7E 1B 78 */	mr r30, r3
/* 80979F20  3C 80 80 98 */	lis r4, lit_4037@ha /* 0x8097F540@ha */
/* 80979F24  3B E4 F5 40 */	addi r31, r4, lit_4037@l /* 0x8097F540@l */
/* 80979F28  4B 7D F8 99 */	bl getEscapeTag__10daNpcCd2_cFv
/* 80979F2C  90 7E 0A B0 */	stw r3, 0xab0(r30)
/* 80979F30  80 7E 0A B0 */	lwz r3, 0xab0(r30)
/* 80979F34  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80979F38  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80979F3C  38 7E 0A D0 */	addi r3, r30, 0xad0
/* 80979F40  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80979F44  7C 05 07 74 */	extsb r5, r0
/* 80979F48  38 C0 00 01 */	li r6, 1
/* 80979F4C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80979F50  39 00 00 01 */	li r8, 1
/* 80979F54  4B 7D FA E5 */	bl setPath__11PathTrace_cFiiiP4cXyzb
/* 80979F58  38 7E 0A D0 */	addi r3, r30, 0xad0
/* 80979F5C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80979F60  4B 7E 00 39 */	bl setNextPoint__11PathTrace_cFR4cXyz
/* 80979F64  80 BE 0B 58 */	lwz r5, 0xb58(r30)
/* 80979F68  2C 05 00 00 */	cmpwi r5, 0
/* 80979F6C  40 82 00 48 */	bne lbl_80979FB4
/* 80979F70  7F C3 F3 78 */	mr r3, r30
/* 80979F74  38 80 00 29 */	li r4, 0x29
/* 80979F78  4B 7D E1 79 */	bl getAnmP__10daNpcCd2_cFii
/* 80979F7C  7C 64 1B 78 */	mr r4, r3
/* 80979F80  7F C3 F3 78 */	mr r3, r30
/* 80979F84  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80979F88  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80979F8C  38 A0 00 00 */	li r5, 0
/* 80979F90  38 C0 00 00 */	li r6, 0
/* 80979F94  38 E0 FF FF */	li r7, -1
/* 80979F98  4B 7D EF 69 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80979F9C  38 7E 05 94 */	addi r3, r30, 0x594
/* 80979FA0  38 80 00 01 */	li r4, 1
/* 80979FA4  4B 94 6E 75 */	bl playVoice__17Z2CreatureCitizenFi
/* 80979FA8  38 00 00 00 */	li r0, 0
/* 80979FAC  90 1E 0B 68 */	stw r0, 0xb68(r30)
/* 80979FB0  48 00 00 44 */	b lbl_80979FF4
lbl_80979FB4:
/* 80979FB4  7F C3 F3 78 */	mr r3, r30
/* 80979FB8  38 80 00 04 */	li r4, 4
/* 80979FBC  4B 7D E1 35 */	bl getAnmP__10daNpcCd2_cFii
/* 80979FC0  7C 64 1B 78 */	mr r4, r3
/* 80979FC4  7F C3 F3 78 */	mr r3, r30
/* 80979FC8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80979FCC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80979FD0  38 A0 00 02 */	li r5, 2
/* 80979FD4  38 C0 00 00 */	li r6, 0
/* 80979FD8  38 E0 FF FF */	li r7, -1
/* 80979FDC  4B 7D EF 25 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80979FE0  38 7E 05 94 */	addi r3, r30, 0x594
/* 80979FE4  38 80 00 00 */	li r4, 0
/* 80979FE8  4B 94 6E 31 */	bl playVoice__17Z2CreatureCitizenFi
/* 80979FEC  38 00 00 01 */	li r0, 1
/* 80979FF0  90 1E 0B 68 */	stw r0, 0xb68(r30)
lbl_80979FF4:
/* 80979FF4  38 00 00 00 */	li r0, 0
/* 80979FF8  90 1E 0B 70 */	stw r0, 0xb70(r30)
/* 80979FFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097A000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097A004  38 63 09 78 */	addi r3, r3, 0x978
/* 8097A008  38 80 00 3C */	li r4, 0x3c
/* 8097A00C  4B 6B AB 8D */	bl onSwitch__12dSv_danBit_cFi
/* 8097A010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097A014  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097A018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097A01C  7C 08 03 A6 */	mtlr r0
/* 8097A020  38 21 00 10 */	addi r1, r1, 0x10
/* 8097A024  4E 80 00 20 */	blr 
