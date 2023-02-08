lbl_80487538:
/* 80487538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048753C  7C 08 02 A6 */	mflr r0
/* 80487540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487548  93 C1 00 08 */	stw r30, 8(r1)
/* 8048754C  7C 7F 1B 78 */	mr r31, r3
/* 80487550  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80487554  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80487558  40 82 00 B4 */	bne lbl_8048760C
/* 8048755C  7F E0 FB 79 */	or. r0, r31, r31
/* 80487560  41 82 00 A0 */	beq lbl_80487600
/* 80487564  7C 1E 03 78 */	mr r30, r0
/* 80487568  4B B9 15 FD */	bl __ct__10fopAc_ac_cFv
/* 8048756C  3C 60 80 49 */	lis r3, __vt__15daTag_AllMato_c@ha /* 0x80489870@ha */
/* 80487570  38 03 98 70 */	addi r0, r3, __vt__15daTag_AllMato_c@l /* 0x80489870@l */
/* 80487574  90 1E 1D 14 */	stw r0, 0x1d14(r30)
/* 80487578  38 7E 05 68 */	addi r3, r30, 0x568
/* 8048757C  3C 80 80 49 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80489180@ha */
/* 80487580  38 84 91 80 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80489180@l */
/* 80487584  3C A0 80 49 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80489138@ha */
/* 80487588  38 A5 91 38 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80489138@l */
/* 8048758C  38 C0 00 08 */	li r6, 8
/* 80487590  38 E0 00 01 */	li r7, 1
/* 80487594  4B ED A7 CD */	bl __construct_array
/* 80487598  38 7E 05 70 */	addi r3, r30, 0x570
/* 8048759C  3C 80 80 49 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80489180@ha */
/* 804875A0  38 84 91 80 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80489180@l */
/* 804875A4  3C A0 80 49 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80489138@ha */
/* 804875A8  38 A5 91 38 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80489138@l */
/* 804875AC  38 C0 00 08 */	li r6, 8
/* 804875B0  38 E0 00 02 */	li r7, 2
/* 804875B4  4B ED A7 AD */	bl __construct_array
/* 804875B8  3C 60 80 49 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80489864@ha */
/* 804875BC  38 03 98 64 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80489864@l */
/* 804875C0  90 1E 05 84 */	stw r0, 0x584(r30)
/* 804875C4  38 7E 05 80 */	addi r3, r30, 0x580
/* 804875C8  4B CB E1 0D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 804875CC  3C 60 80 49 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80489864@ha */
/* 804875D0  38 03 98 64 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80489864@l */
/* 804875D4  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 804875D8  38 7E 05 88 */	addi r3, r30, 0x588
/* 804875DC  4B CB E0 F9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 804875E0  38 7E 05 90 */	addi r3, r30, 0x590
/* 804875E4  3C 80 80 48 */	lis r4, __ct__4cXyzFv@ha /* 0x804876AC@ha */
/* 804875E8  38 84 76 AC */	addi r4, r4, __ct__4cXyzFv@l /* 0x804876AC@l */
/* 804875EC  3C A0 80 48 */	lis r5, __dt__4cXyzFv@ha /* 0x80487670@ha */
/* 804875F0  38 A5 76 70 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80487670@l */
/* 804875F4  38 C0 00 0C */	li r6, 0xc
/* 804875F8  38 E0 01 F4 */	li r7, 0x1f4
/* 804875FC  4B ED A7 65 */	bl __construct_array
lbl_80487600:
/* 80487600  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80487604  60 00 00 08 */	ori r0, r0, 8
/* 80487608  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8048760C:
/* 8048760C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80487610  3C 60 80 49 */	lis r3, lit_4025@ha /* 0x804896E4@ha */
/* 80487614  C0 23 96 E4 */	lfs f1, lit_4025@l(r3)  /* 0x804896E4@l */
/* 80487618  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048761C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80487620  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80487624  EC 00 00 72 */	fmuls f0, f0, f1
/* 80487628  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048762C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80487630  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80487634  38 00 FF FF */	li r0, -1
/* 80487638  B0 1F 1D 0C */	sth r0, 0x1d0c(r31)
/* 8048763C  7F E3 FB 78 */	mr r3, r31
/* 80487640  48 00 08 95 */	bl isDelete__15daTag_AllMato_cFv
/* 80487644  2C 03 00 00 */	cmpwi r3, 0
/* 80487648  41 82 00 0C */	beq lbl_80487654
/* 8048764C  38 60 00 05 */	li r3, 5
/* 80487650  48 00 00 08 */	b lbl_80487658
lbl_80487654:
/* 80487654  38 60 00 04 */	li r3, 4
lbl_80487658:
/* 80487658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048765C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80487660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487664  7C 08 03 A6 */	mtlr r0
/* 80487668  38 21 00 10 */	addi r1, r1, 0x10
/* 8048766C  4E 80 00 20 */	blr 
