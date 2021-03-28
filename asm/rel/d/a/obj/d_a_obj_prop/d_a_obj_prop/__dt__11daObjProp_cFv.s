lbl_80CB5234:
/* 80CB5234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5238  7C 08 02 A6 */	mflr r0
/* 80CB523C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5244  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB5248  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB524C  7C 9F 23 78 */	mr r31, r4
/* 80CB5250  41 82 00 48 */	beq lbl_80CB5298
/* 80CB5254  3C 60 80 CB */	lis r3, __vt__11daObjProp_c@ha
/* 80CB5258  38 03 56 7C */	addi r0, r3, __vt__11daObjProp_c@l
/* 80CB525C  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80CB5260  7F C3 F3 78 */	mr r3, r30
/* 80CB5264  41 82 00 08 */	beq lbl_80CB526C
/* 80CB5268  38 63 05 68 */	addi r3, r3, 0x568
lbl_80CB526C:
/* 80CB526C  3C 80 80 CB */	lis r4, l_arcName@ha
/* 80CB5270  38 84 56 28 */	addi r4, r4, l_arcName@l
/* 80CB5274  80 84 00 00 */	lwz r4, 0(r4)
/* 80CB5278  4B 37 7D 90 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CB527C  7F C3 F3 78 */	mr r3, r30
/* 80CB5280  38 80 00 00 */	li r4, 0
/* 80CB5284  4B 36 3A 08 */	b __dt__10fopAc_ac_cFv
/* 80CB5288  7F E0 07 35 */	extsh. r0, r31
/* 80CB528C  40 81 00 0C */	ble lbl_80CB5298
/* 80CB5290  7F C3 F3 78 */	mr r3, r30
/* 80CB5294  4B 61 9A A8 */	b __dl__FPv
lbl_80CB5298:
/* 80CB5298  7F C3 F3 78 */	mr r3, r30
/* 80CB529C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB52A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB52A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB52A8  7C 08 03 A6 */	mtlr r0
/* 80CB52AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB52B0  4E 80 00 20 */	blr 
