lbl_806A60E8:
/* 806A60E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A60EC  7C 08 02 A6 */	mflr r0
/* 806A60F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A60F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A60F8  7C 7F 1B 78 */	mr r31, r3
/* 806A60FC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806A6100  3C 80 80 6A */	lis r4, stringBase0@ha
/* 806A6104  38 84 72 B4 */	addi r4, r4, stringBase0@l
/* 806A6108  38 84 00 05 */	addi r4, r4, 5
/* 806A610C  4B 98 6E FC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806A6110  88 1F 0E 90 */	lbz r0, 0xe90(r31)
/* 806A6114  28 00 00 00 */	cmplwi r0, 0
/* 806A6118  41 82 00 10 */	beq lbl_806A6128
/* 806A611C  38 00 00 00 */	li r0, 0
/* 806A6120  3C 60 80 6A */	lis r3, data_806A74B8@ha
/* 806A6124  98 03 74 B8 */	stb r0, data_806A74B8@l(r3)
lbl_806A6128:
/* 806A6128  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806A612C  28 00 00 00 */	cmplwi r0, 0
/* 806A6130  41 82 00 0C */	beq lbl_806A613C
/* 806A6134  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A6138  4B 96 B1 D8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_806A613C:
/* 806A613C  38 60 00 01 */	li r3, 1
/* 806A6140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A6144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6148  7C 08 03 A6 */	mtlr r0
/* 806A614C  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6150  4E 80 00 20 */	blr 
