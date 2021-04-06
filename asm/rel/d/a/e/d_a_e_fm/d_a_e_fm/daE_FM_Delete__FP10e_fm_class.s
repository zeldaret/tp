lbl_804F8C68:
/* 804F8C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F8C6C  7C 08 02 A6 */	mflr r0
/* 804F8C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F8C78  7C 7F 1B 78 */	mr r31, r3
/* 804F8C7C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 804F8C80  3C 80 80 50 */	lis r4, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F8C84  38 84 A9 48 */	addi r4, r4, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F8C88  4B B3 43 81 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804F8C8C  3C 7F 00 02 */	addis r3, r31, 2
/* 804F8C90  88 03 B0 81 */	lbz r0, -0x4f7f(r3)
/* 804F8C94  28 00 00 00 */	cmplwi r0, 0
/* 804F8C98  41 82 00 10 */	beq lbl_804F8CA8
/* 804F8C9C  38 00 00 00 */	li r0, 0
/* 804F8CA0  3C 60 80 50 */	lis r3, struct_804FAE94+0x1@ha /* 0x804FAE95@ha */
/* 804F8CA4  98 03 AE 95 */	stb r0, struct_804FAE94+0x1@l(r3)  /* 0x804FAE95@l */
lbl_804F8CA8:
/* 804F8CA8  38 7F 23 9C */	addi r3, r31, 0x239c
/* 804F8CAC  4B CA EC 81 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 804F8CB0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 804F8CB4  28 00 00 00 */	cmplwi r0, 0
/* 804F8CB8  41 82 00 18 */	beq lbl_804F8CD0
/* 804F8CBC  38 7F 06 3C */	addi r3, r31, 0x63c
/* 804F8CC0  81 9F 06 3C */	lwz r12, 0x63c(r31)
/* 804F8CC4  81 8C 00 08 */	lwz r12, 8(r12)
/* 804F8CC8  7D 89 03 A6 */	mtctr r12
/* 804F8CCC  4E 80 04 21 */	bctrl 
lbl_804F8CD0:
/* 804F8CD0  38 60 00 01 */	li r3, 1
/* 804F8CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F8CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F8CDC  7C 08 03 A6 */	mtlr r0
/* 804F8CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8CE4  4E 80 00 20 */	blr 
