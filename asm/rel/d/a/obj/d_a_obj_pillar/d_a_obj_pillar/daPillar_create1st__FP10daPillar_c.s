lbl_80CB0780:
/* 80CB0780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB0784  7C 08 02 A6 */	mflr r0
/* 80CB0788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB078C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB0790  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB0794  7C 7F 1B 78 */	mr r31, r3
/* 80CB0798  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB079C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB07A0  40 82 00 B4 */	bne lbl_80CB0854
/* 80CB07A4  7F E0 FB 79 */	or. r0, r31, r31
/* 80CB07A8  41 82 00 A0 */	beq lbl_80CB0848
/* 80CB07AC  7C 1E 03 78 */	mr r30, r0
/* 80CB07B0  4B 3C 7E 75 */	bl __ct__16dBgS_MoveBgActorFv
/* 80CB07B4  3C 60 80 CB */	lis r3, __vt__10daPillar_c@ha /* 0x80CB0BD8@ha */
/* 80CB07B8  38 03 0B D8 */	addi r0, r3, __vt__10daPillar_c@l /* 0x80CB0BD8@l */
/* 80CB07BC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CB07C0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CB07C4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CB07C8  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 80CB07CC  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80CB07D0  4B 3D 2F 91 */	bl __ct__10dCcD_GSttsFv
/* 80CB07D4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CB07D8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CB07DC  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 80CB07E0  38 03 00 20 */	addi r0, r3, 0x20
/* 80CB07E4  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80CB07E8  3B DE 05 E8 */	addi r30, r30, 0x5e8
/* 80CB07EC  7F C3 F3 78 */	mr r3, r30
/* 80CB07F0  4B 3D 32 39 */	bl __ct__12dCcD_GObjInfFv
/* 80CB07F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CB07F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CB07FC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CB0800  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha /* 0x80CB0BCC@ha */
/* 80CB0804  38 03 0B CC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CB0BCC@l */
/* 80CB0808  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80CB080C  3C 60 80 CB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CB0BC0@ha */
/* 80CB0810  38 03 0B C0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CB0BC0@l */
/* 80CB0814  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CB0818  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CB081C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CB0820  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CB0824  38 03 00 58 */	addi r0, r3, 0x58
/* 80CB0828  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CB082C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CB0830  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CB0834  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CB0838  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CB083C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CB0840  38 03 00 84 */	addi r0, r3, 0x84
/* 80CB0844  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80CB0848:
/* 80CB0848  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CB084C  60 00 00 08 */	ori r0, r0, 8
/* 80CB0850  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CB0854:
/* 80CB0854  7F E3 FB 78 */	mr r3, r31
/* 80CB0858  4B FF F0 4D */	bl create1st__10daPillar_cFv
/* 80CB085C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB0860  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB0864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB0868  7C 08 03 A6 */	mtlr r0
/* 80CB086C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB0870  4E 80 00 20 */	blr 
