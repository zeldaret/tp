lbl_80BC7F74:
/* 80BC7F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7F78  7C 08 02 A6 */	mflr r0
/* 80BC7F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC7F84  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC7F88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BC7F8C  7C 9F 23 78 */	mr r31, r4
/* 80BC7F90  41 82 00 5C */	beq lbl_80BC7FEC
/* 80BC7F94  3C 60 80 BD */	lis r3, __vt__17daObjChandelier_c@ha /* 0x80BC8E3C@ha */
/* 80BC7F98  38 03 8E 3C */	addi r0, r3, __vt__17daObjChandelier_c@l /* 0x80BC8E3C@l */
/* 80BC7F9C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BC7FA0  7F C3 F3 78 */	mr r3, r30
/* 80BC7FA4  41 82 00 08 */	beq lbl_80BC7FAC
/* 80BC7FA8  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80BC7FAC:
/* 80BC7FAC  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BC8D64@ha */
/* 80BC7FB0  38 84 8D 64 */	addi r4, r4, l_arcName@l /* 0x80BC8D64@l */
/* 80BC7FB4  80 84 00 00 */	lwz r4, 0(r4)
/* 80BC7FB8  4B 46 50 51 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BC7FBC  28 1E 00 00 */	cmplwi r30, 0
/* 80BC7FC0  41 82 00 1C */	beq lbl_80BC7FDC
/* 80BC7FC4  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80BC7FC8  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80BC7FCC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BC7FD0  7F C3 F3 78 */	mr r3, r30
/* 80BC7FD4  38 80 00 00 */	li r4, 0
/* 80BC7FD8  4B 45 0C B5 */	bl __dt__10fopAc_ac_cFv
lbl_80BC7FDC:
/* 80BC7FDC  7F E0 07 35 */	extsh. r0, r31
/* 80BC7FE0  40 81 00 0C */	ble lbl_80BC7FEC
/* 80BC7FE4  7F C3 F3 78 */	mr r3, r30
/* 80BC7FE8  4B 70 6D 55 */	bl __dl__FPv
lbl_80BC7FEC:
/* 80BC7FEC  7F C3 F3 78 */	mr r3, r30
/* 80BC7FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC7FF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC7FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7FFC  7C 08 03 A6 */	mtlr r0
/* 80BC8000  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8004  4E 80 00 20 */	blr 
