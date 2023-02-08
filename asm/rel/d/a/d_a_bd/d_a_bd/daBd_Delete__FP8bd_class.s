lbl_804D95A4:
/* 804D95A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D95A8  7C 08 02 A6 */	mflr r0
/* 804D95AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D95B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D95B4  7C 7F 1B 78 */	mr r31, r3
/* 804D95B8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 804D95BC  3C 80 80 4E */	lis r4, d_a_bd__stringBase0@ha /* 0x804D9F6C@ha */
/* 804D95C0  38 84 9F 6C */	addi r4, r4, d_a_bd__stringBase0@l /* 0x804D9F6C@l */
/* 804D95C4  4B B5 3A 45 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804D95C8  88 1F 09 E8 */	lbz r0, 0x9e8(r31)
/* 804D95CC  28 00 00 00 */	cmplwi r0, 0
/* 804D95D0  41 82 00 10 */	beq lbl_804D95E0
/* 804D95D4  38 00 00 00 */	li r0, 0
/* 804D95D8  3C 60 80 4E */	lis r3, struct_804DA35C+0x1@ha /* 0x804DA35D@ha */
/* 804D95DC  98 03 A3 5D */	stb r0, struct_804DA35C+0x1@l(r3)  /* 0x804DA35D@l */
lbl_804D95E0:
/* 804D95E0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 804D95E4  28 00 00 00 */	cmplwi r0, 0
/* 804D95E8  41 82 00 0C */	beq lbl_804D95F4
/* 804D95EC  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 804D95F0  4B DE 4A 09 */	bl deleteObject__14Z2SoundObjBaseFv
lbl_804D95F4:
/* 804D95F4  38 60 00 01 */	li r3, 1
/* 804D95F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D95FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9600  7C 08 03 A6 */	mtlr r0
/* 804D9604  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9608  4E 80 00 20 */	blr 
