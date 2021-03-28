lbl_80C436A0:
/* 80C436A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C436A4  7C 08 02 A6 */	mflr r0
/* 80C436A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C436AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C436B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C436B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C436B8  7C 9F 23 78 */	mr r31, r4
/* 80C436BC  41 82 00 CC */	beq lbl_80C43788
/* 80C436C0  38 7E 02 78 */	addi r3, r30, 0x278
/* 80C436C4  3C 80 80 C4 */	lis r4, __dt__8dCcD_SphFv@ha
/* 80C436C8  38 84 34 E8 */	addi r4, r4, __dt__8dCcD_SphFv@l
/* 80C436CC  38 A0 01 38 */	li r5, 0x138
/* 80C436D0  38 C0 00 03 */	li r6, 3
/* 80C436D4  4B 71 E6 14 */	b __destroy_arr
/* 80C436D8  34 1E 02 3C */	addic. r0, r30, 0x23c
/* 80C436DC  41 82 00 54 */	beq lbl_80C43730
/* 80C436E0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C436E4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C436E8  90 7E 02 54 */	stw r3, 0x254(r30)
/* 80C436EC  38 03 00 20 */	addi r0, r3, 0x20
/* 80C436F0  90 1E 02 58 */	stw r0, 0x258(r30)
/* 80C436F4  34 1E 02 58 */	addic. r0, r30, 0x258
/* 80C436F8  41 82 00 24 */	beq lbl_80C4371C
/* 80C436FC  3C 60 80 C4 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C43700  38 03 3C 70 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C43704  90 1E 02 58 */	stw r0, 0x258(r30)
/* 80C43708  34 1E 02 58 */	addic. r0, r30, 0x258
/* 80C4370C  41 82 00 10 */	beq lbl_80C4371C
/* 80C43710  3C 60 80 C4 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C43714  38 03 3C 64 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C43718  90 1E 02 58 */	stw r0, 0x258(r30)
lbl_80C4371C:
/* 80C4371C  34 1E 02 3C */	addic. r0, r30, 0x23c
/* 80C43720  41 82 00 10 */	beq lbl_80C43730
/* 80C43724  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C43728  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C4372C  90 1E 02 54 */	stw r0, 0x254(r30)
lbl_80C43730:
/* 80C43730  38 7E 01 D8 */	addi r3, r30, 0x1d8
/* 80C43734  3C 80 80 C4 */	lis r4, __dt__5csXyzFv@ha
/* 80C43738  38 84 34 AC */	addi r4, r4, __dt__5csXyzFv@l
/* 80C4373C  38 A0 00 06 */	li r5, 6
/* 80C43740  38 C0 00 10 */	li r6, 0x10
/* 80C43744  4B 71 E5 A4 */	b __destroy_arr
/* 80C43748  38 7E 01 18 */	addi r3, r30, 0x118
/* 80C4374C  3C 80 80 C4 */	lis r4, __dt__4cXyzFv@ha
/* 80C43750  38 84 16 54 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C43754  38 A0 00 0C */	li r5, 0xc
/* 80C43758  38 C0 00 10 */	li r6, 0x10
/* 80C4375C  4B 71 E5 8C */	b __destroy_arr
/* 80C43760  38 7E 00 58 */	addi r3, r30, 0x58
/* 80C43764  3C 80 80 C4 */	lis r4, __dt__4cXyzFv@ha
/* 80C43768  38 84 16 54 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C4376C  38 A0 00 0C */	li r5, 0xc
/* 80C43770  38 C0 00 10 */	li r6, 0x10
/* 80C43774  4B 71 E5 74 */	b __destroy_arr
/* 80C43778  7F E0 07 35 */	extsh. r0, r31
/* 80C4377C  40 81 00 0C */	ble lbl_80C43788
/* 80C43780  7F C3 F3 78 */	mr r3, r30
/* 80C43784  4B 68 B5 B8 */	b __dl__FPv
lbl_80C43788:
/* 80C43788  7F C3 F3 78 */	mr r3, r30
/* 80C4378C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C43790  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C43794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C43798  7C 08 03 A6 */	mtlr r0
/* 80C4379C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C437A0  4E 80 00 20 */	blr 
