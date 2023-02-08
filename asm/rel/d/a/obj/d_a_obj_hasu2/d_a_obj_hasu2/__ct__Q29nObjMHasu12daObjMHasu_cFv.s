lbl_80C182DC:
/* 80C182DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C182E0  7C 08 02 A6 */	mflr r0
/* 80C182E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C182E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C182EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C182F0  7C 7E 1B 78 */	mr r30, r3
/* 80C182F4  3C 80 80 C2 */	lis r4, l_cull_box@ha /* 0x80C18A58@ha */
/* 80C182F8  3B E4 8A 58 */	addi r31, r4, l_cull_box@l /* 0x80C18A58@l */
/* 80C182FC  4B 46 03 29 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C18300  3C 60 80 C2 */	lis r3, __vt__Q29nObjMHasu12daObjMHasu_c@ha /* 0x80C18AFC@ha */
/* 80C18304  38 03 8A FC */	addi r0, r3, __vt__Q29nObjMHasu12daObjMHasu_c@l /* 0x80C18AFC@l */
/* 80C18308  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C1830C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C18310  D0 1E 06 10 */	stfs f0, 0x610(r30)
/* 80C18314  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C18318  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 80C1831C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C18320  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 80C18324  7F C3 F3 78 */	mr r3, r30
/* 80C18328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1832C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C18330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18334  7C 08 03 A6 */	mtlr r0
/* 80C18338  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1833C  4E 80 00 20 */	blr 
