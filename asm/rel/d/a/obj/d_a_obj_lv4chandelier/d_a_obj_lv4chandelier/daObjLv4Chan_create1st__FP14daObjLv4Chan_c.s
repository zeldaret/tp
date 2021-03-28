lbl_80C66150:
/* 80C66150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66154  7C 08 02 A6 */	mflr r0
/* 80C66158  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6615C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C66160  93 C1 00 08 */	stw r30, 8(r1)
/* 80C66164  7C 7F 1B 78 */	mr r31, r3
/* 80C66168  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C6616C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C66170  40 82 00 EC */	bne lbl_80C6625C
/* 80C66174  7F E0 FB 79 */	or. r0, r31, r31
/* 80C66178  41 82 00 D8 */	beq lbl_80C66250
/* 80C6617C  7C 1E 03 78 */	mr r30, r0
/* 80C66180  4B 41 24 A4 */	b __ct__16dBgS_MoveBgActorFv
/* 80C66184  3C 60 80 C6 */	lis r3, __vt__14daObjLv4Chan_c@ha
/* 80C66188  38 03 6A 6C */	addi r0, r3, __vt__14daObjLv4Chan_c@l
/* 80C6618C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C66190  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C66194  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C66198  90 1E 06 58 */	stw r0, 0x658(r30)
/* 80C6619C  38 7E 06 5C */	addi r3, r30, 0x65c
/* 80C661A0  4B 41 D5 C0 */	b __ct__10dCcD_GSttsFv
/* 80C661A4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C661A8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C661AC  90 7E 06 58 */	stw r3, 0x658(r30)
/* 80C661B0  38 03 00 20 */	addi r0, r3, 0x20
/* 80C661B4  90 1E 06 5C */	stw r0, 0x65c(r30)
/* 80C661B8  38 7E 06 7C */	addi r3, r30, 0x67c
/* 80C661BC  3C 80 80 C6 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80C661C0  38 84 63 C0 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80C661C4  3C A0 80 C6 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80C661C8  38 A5 62 F4 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80C661CC  38 C0 01 38 */	li r6, 0x138
/* 80C661D0  38 E0 00 08 */	li r7, 8
/* 80C661D4  4B 6F BB 8C */	b __construct_array
/* 80C661D8  38 7E 10 3C */	addi r3, r30, 0x103c
/* 80C661DC  3C 80 80 C6 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80C661E0  38 84 63 C0 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80C661E4  3C A0 80 C6 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80C661E8  38 A5 62 F4 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80C661EC  38 C0 01 38 */	li r6, 0x138
/* 80C661F0  38 E0 00 08 */	li r7, 8
/* 80C661F4  4B 6F BB 6C */	b __construct_array
/* 80C661F8  38 7E 19 FC */	addi r3, r30, 0x19fc
/* 80C661FC  3C 80 80 C6 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80C66200  38 84 63 C0 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80C66204  3C A0 80 C6 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80C66208  38 A5 62 F4 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80C6620C  38 C0 01 38 */	li r6, 0x138
/* 80C66210  38 E0 00 08 */	li r7, 8
/* 80C66214  4B 6F BB 4C */	b __construct_array
/* 80C66218  3B DE 24 28 */	addi r30, r30, 0x2428
/* 80C6621C  7F C3 F3 78 */	mr r3, r30
/* 80C66220  4B 41 13 5C */	b __ct__11dBgS_GndChkFv
/* 80C66224  3C 60 80 C6 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80C66228  38 63 6A 3C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80C6622C  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80C66230  38 03 00 0C */	addi r0, r3, 0xc
/* 80C66234  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80C66238  38 03 00 18 */	addi r0, r3, 0x18
/* 80C6623C  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80C66240  38 03 00 24 */	addi r0, r3, 0x24
/* 80C66244  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C66248  38 7E 00 3C */	addi r3, r30, 0x3c
/* 80C6624C  4B 41 2C 1C */	b SetObj__16dBgS_PolyPassChkFv
lbl_80C66250:
/* 80C66250  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C66254  60 00 00 08 */	ori r0, r0, 8
/* 80C66258  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C6625C:
/* 80C6625C  7F E3 FB 78 */	mr r3, r31
/* 80C66260  4B FF D1 01 */	bl create1st__14daObjLv4Chan_cFv
/* 80C66264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C66268  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6626C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66270  7C 08 03 A6 */	mtlr r0
/* 80C66274  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66278  4E 80 00 20 */	blr 
