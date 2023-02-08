lbl_80088BBC:
/* 80088BBC  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80088BC0  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80088BC4  40 82 00 0C */	bne lbl_80088BD0
/* 80088BC8  38 60 00 00 */	li r3, 0
/* 80088BCC  4E 80 00 20 */	blr 
lbl_80088BD0:
/* 80088BD0  80 03 04 FC */	lwz r0, 0x4fc(r3)
/* 80088BD4  2C 00 FF FF */	cmpwi r0, -1
/* 80088BD8  41 82 00 0C */	beq lbl_80088BE4
/* 80088BDC  7C 00 20 00 */	cmpw r0, r4
/* 80088BE0  40 82 00 3C */	bne lbl_80088C1C
lbl_80088BE4:
/* 80088BE4  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80088BE8  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 80088BEC  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80088BF0  38 00 00 01 */	li r0, 1
/* 80088BF4  98 03 04 E8 */	stb r0, 0x4e8(r3)
/* 80088BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80088BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80088C00  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80088C04  28 00 00 00 */	cmplwi r0, 0
/* 80088C08  41 82 00 0C */	beq lbl_80088C14
/* 80088C0C  38 00 00 02 */	li r0, 2
/* 80088C10  90 03 51 84 */	stw r0, 0x5184(r3)
lbl_80088C14:
/* 80088C14  38 60 00 01 */	li r3, 1
/* 80088C18  4E 80 00 20 */	blr 
lbl_80088C1C:
/* 80088C1C  38 60 00 00 */	li r3, 0
/* 80088C20  4E 80 00 20 */	blr 
