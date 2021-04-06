lbl_80CA8048:
/* 80CA8048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA804C  7C 08 02 A6 */	mflr r0
/* 80CA8050  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA8058  7C 7F 1B 78 */	mr r31, r3
/* 80CA805C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CA8060  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CA8064  40 82 00 28 */	bne lbl_80CA808C
/* 80CA8068  28 1F 00 00 */	cmplwi r31, 0
/* 80CA806C  41 82 00 14 */	beq lbl_80CA8080
/* 80CA8070  4B 3D 05 B5 */	bl __ct__16dBgS_MoveBgActorFv
/* 80CA8074  3C 60 80 CB */	lis r3, __vt__12daObjOnsen_c@ha /* 0x80CA81C0@ha */
/* 80CA8078  38 03 81 C0 */	addi r0, r3, __vt__12daObjOnsen_c@l /* 0x80CA81C0@l */
/* 80CA807C  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80CA8080:
/* 80CA8080  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CA8084  60 00 00 08 */	ori r0, r0, 8
/* 80CA8088  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CA808C:
/* 80CA808C  7F E3 FB 78 */	mr r3, r31
/* 80CA8090  4B FF FD B5 */	bl create1st__12daObjOnsen_cFv
/* 80CA8094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA8098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA809C  7C 08 03 A6 */	mtlr r0
/* 80CA80A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA80A4  4E 80 00 20 */	blr 
