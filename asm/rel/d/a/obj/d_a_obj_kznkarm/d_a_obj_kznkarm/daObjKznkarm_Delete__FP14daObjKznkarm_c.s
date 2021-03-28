lbl_80C509B0:
/* 80C509B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C509B4  7C 08 02 A6 */	mflr r0
/* 80C509B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C509BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C509C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C509C4  41 82 00 80 */	beq lbl_80C50A44
/* 80C509C8  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80C509CC  3C 80 80 C5 */	lis r4, l_arcName@ha
/* 80C509D0  38 84 0D C4 */	addi r4, r4, l_arcName@l
/* 80C509D4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C509D8  4B 3D C6 30 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C509DC  34 1F 05 B4 */	addic. r0, r31, 0x5b4
/* 80C509E0  41 82 00 2C */	beq lbl_80C50A0C
/* 80C509E4  3C 60 80 C5 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C509E8  38 63 0E EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C509EC  90 7F 05 C4 */	stw r3, 0x5c4(r31)
/* 80C509F0  38 03 00 0C */	addi r0, r3, 0xc
/* 80C509F4  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80C509F8  38 03 00 18 */	addi r0, r3, 0x18
/* 80C509FC  90 1F 05 D8 */	stw r0, 0x5d8(r31)
/* 80C50A00  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80C50A04  38 80 00 00 */	li r4, 0
/* 80C50A08  4B 42 55 8C */	b __dt__9dBgS_AcchFv
lbl_80C50A0C:
/* 80C50A0C  34 1F 05 74 */	addic. r0, r31, 0x574
/* 80C50A10  41 82 00 28 */	beq lbl_80C50A38
/* 80C50A14  3C 60 80 C5 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80C50A18  38 03 0E E0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80C50A1C  90 1F 05 80 */	stw r0, 0x580(r31)
/* 80C50A20  38 7F 05 88 */	addi r3, r31, 0x588
/* 80C50A24  38 80 FF FF */	li r4, -1
/* 80C50A28  4B 61 E4 F0 */	b __dt__8cM3dGCirFv
/* 80C50A2C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80C50A30  38 80 00 00 */	li r4, 0
/* 80C50A34  4B 61 76 7C */	b __dt__13cBgS_PolyInfoFv
lbl_80C50A38:
/* 80C50A38  7F E3 FB 78 */	mr r3, r31
/* 80C50A3C  38 80 00 00 */	li r4, 0
/* 80C50A40  4B 3C 82 4C */	b __dt__10fopAc_ac_cFv
lbl_80C50A44:
/* 80C50A44  38 60 00 01 */	li r3, 1
/* 80C50A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C50A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C50A50  7C 08 03 A6 */	mtlr r0
/* 80C50A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80C50A58  4E 80 00 20 */	blr 
