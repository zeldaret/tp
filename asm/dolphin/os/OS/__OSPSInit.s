lbl_8033A80C:
/* 8033A80C  7C 08 02 A6 */	mflr r0
/* 8033A810  90 01 00 04 */	stw r0, 4(r1)
/* 8033A814  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033A818  4B FF F5 75 */	bl PPCMfhid2
/* 8033A81C  64 63 A0 00 */	oris r3, r3, 0xa000
/* 8033A820  4B FF F5 75 */	bl PPCMthid2
/* 8033A824  48 00 0E A1 */	bl ICFlashInvalidate
/* 8033A828  7C 00 04 AC */	sync
/* 8033A82C  38 60 00 00 */	li r3, 0
/* 8033A830  7C 70 E3 A6 */	mtspr 0x390, r3
/* 8033A834  7C 71 E3 A6 */	mtspr 0x391, r3
/* 8033A838  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8033A83C  7C 73 E3 A6 */	mtspr 0x393, r3
/* 8033A840  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8033A844  7C 75 E3 A6 */	mtspr 0x395, r3
/* 8033A848  7C 76 E3 A6 */	mtspr 0x396, r3
/* 8033A84C  7C 77 E3 A6 */	mtspr 0x397, r3
/* 8033A850  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033A854  38 21 00 08 */	addi r1, r1, 8
/* 8033A858  7C 08 03 A6 */	mtlr r0
/* 8033A85C  4E 80 00 20 */	blr 
