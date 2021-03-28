lbl_809BBFBC:
/* 809BBFBC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 809BBFC0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809BBFC4  41 82 00 08 */	beq lbl_809BBFCC
/* 809BBFC8  48 00 00 0C */	b lbl_809BBFD4
lbl_809BBFCC:
/* 809BBFCC  38 60 00 00 */	li r3, 0
/* 809BBFD0  4E 80 00 20 */	blr 
lbl_809BBFD4:
/* 809BBFD4  38 60 00 01 */	li r3, 1
/* 809BBFD8  4E 80 00 20 */	blr 
