lbl_8000E654:
/* 8000E654  3C 80 80 3D */	lis r4, __vt__9J3DPacket@ha
/* 8000E658  38 04 D9 7C */	addi r0, r4, __vt__9J3DPacket@l
/* 8000E65C  90 03 00 00 */	stw r0, 0(r3)
/* 8000E660  38 00 00 00 */	li r0, 0
/* 8000E664  90 03 00 04 */	stw r0, 4(r3)
/* 8000E668  90 03 00 08 */	stw r0, 8(r3)
/* 8000E66C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8000E670  3C 80 80 3A */	lis r4, __vt__19mDoExt_invJntPacket@ha
/* 8000E674  38 04 32 70 */	addi r0, r4, __vt__19mDoExt_invJntPacket@l
/* 8000E678  90 03 00 00 */	stw r0, 0(r3)
/* 8000E67C  4E 80 00 20 */	blr 
