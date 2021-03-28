lbl_8046A6DC:
/* 8046A6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046A6E0  7C 08 02 A6 */	mflr r0
/* 8046A6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046A6E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046A6EC  7C 7F 1B 78 */	mr r31, r3
/* 8046A6F0  38 7F 05 68 */	addi r3, r31, 0x568
/* 8046A6F4  3C 80 80 47 */	lis r4, struct_8046B0D0+0x0@ha
/* 8046A6F8  38 84 B0 D0 */	addi r4, r4, struct_8046B0D0+0x0@l
/* 8046A6FC  38 84 00 23 */	addi r4, r4, 0x23
/* 8046A700  4B BC 29 08 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8046A704  38 7F 06 14 */	addi r3, r31, 0x614
/* 8046A708  4B D3 D2 24 */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 8046A70C  38 60 00 01 */	li r3, 1
/* 8046A710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046A714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046A718  7C 08 03 A6 */	mtlr r0
/* 8046A71C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046A720  4E 80 00 20 */	blr 
