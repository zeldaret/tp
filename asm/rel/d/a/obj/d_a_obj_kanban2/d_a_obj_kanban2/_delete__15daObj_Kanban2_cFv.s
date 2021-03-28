lbl_80584ED8:
/* 80584ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80584EDC  7C 08 02 A6 */	mflr r0
/* 80584EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80584EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80584EE8  7C 7F 1B 78 */	mr r31, r3
/* 80584EEC  38 7F 05 68 */	addi r3, r31, 0x568
/* 80584EF0  3C 80 80 58 */	lis r4, struct_80585710+0x0@ha
/* 80584EF4  38 84 57 10 */	addi r4, r4, struct_80585710+0x0@l
/* 80584EF8  38 84 01 53 */	addi r4, r4, 0x153
/* 80584EFC  4B AA 81 0C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80584F00  88 1F 09 FC */	lbz r0, 0x9fc(r31)
/* 80584F04  28 00 00 00 */	cmplwi r0, 0
/* 80584F08  41 82 00 10 */	beq lbl_80584F18
/* 80584F0C  38 00 00 00 */	li r0, 0
/* 80584F10  3C 60 80 58 */	lis r3, struct_80585CB4+0x1@ha
/* 80584F14  98 03 5C B5 */	stb r0, struct_80585CB4+0x1@l(r3)
lbl_80584F18:
/* 80584F18  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80584F1C  28 00 00 00 */	cmplwi r0, 0
/* 80584F20  41 82 00 0C */	beq lbl_80584F2C
/* 80584F24  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80584F28  4B D3 90 D0 */	b deleteObject__14Z2SoundObjBaseFv
lbl_80584F2C:
/* 80584F2C  38 60 00 01 */	li r3, 1
/* 80584F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80584F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80584F38  7C 08 03 A6 */	mtlr r0
/* 80584F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80584F40  4E 80 00 20 */	blr 
