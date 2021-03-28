lbl_80BC30F4:
/* 80BC30F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC30F8  7C 08 02 A6 */	mflr r0
/* 80BC30FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC3104  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC3108  41 82 00 30 */	beq lbl_80BC3138
/* 80BC310C  3C 60 80 BC */	lis r3, __vt__14daBsGate_HIO_c@ha
/* 80BC3110  38 03 32 AC */	addi r0, r3, __vt__14daBsGate_HIO_c@l
/* 80BC3114  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC3118  41 82 00 10 */	beq lbl_80BC3128
/* 80BC311C  3C 60 80 BC */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80BC3120  38 03 32 B8 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80BC3124  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BC3128:
/* 80BC3128  7C 80 07 35 */	extsh. r0, r4
/* 80BC312C  40 81 00 0C */	ble lbl_80BC3138
/* 80BC3130  7F E3 FB 78 */	mr r3, r31
/* 80BC3134  4B 70 BC 08 */	b __dl__FPv
lbl_80BC3138:
/* 80BC3138  7F E3 FB 78 */	mr r3, r31
/* 80BC313C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC3140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3144  7C 08 03 A6 */	mtlr r0
/* 80BC3148  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC314C  4E 80 00 20 */	blr 
