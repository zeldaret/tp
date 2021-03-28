lbl_805A1040:
/* 805A1040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1044  7C 08 02 A6 */	mflr r0
/* 805A1048  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A104C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A1050  93 C1 00 08 */	stw r30, 8(r1)
/* 805A1054  7C 7E 1B 79 */	or. r30, r3, r3
/* 805A1058  7C 9F 23 78 */	mr r31, r4
/* 805A105C  41 82 00 38 */	beq lbl_805A1094
/* 805A1060  3C 80 80 5A */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 805A1064  38 84 12 EC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 805A1068  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805A106C  38 04 00 0C */	addi r0, r4, 0xc
/* 805A1070  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805A1074  38 04 00 18 */	addi r0, r4, 0x18
/* 805A1078  90 1E 00 24 */	stw r0, 0x24(r30)
/* 805A107C  38 80 00 00 */	li r4, 0
/* 805A1080  4B AD 4F 14 */	b __dt__9dBgS_AcchFv
/* 805A1084  7F E0 07 35 */	extsh. r0, r31
/* 805A1088  40 81 00 0C */	ble lbl_805A1094
/* 805A108C  7F C3 F3 78 */	mr r3, r30
/* 805A1090  4B D2 DC AC */	b __dl__FPv
lbl_805A1094:
/* 805A1094  7F C3 F3 78 */	mr r3, r30
/* 805A1098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A109C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A10A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A10A4  7C 08 03 A6 */	mtlr r0
/* 805A10A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A10AC  4E 80 00 20 */	blr 
